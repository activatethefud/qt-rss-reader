import db, time, threading
from config import *
import requests as req
from bs4 import BeautifulSoup
import datetime as dt

def now_string():
    return f"[{str(dt.datetime.now())}] "

class Collector(threading.Thread):

    def __init__(self):
        super(Collector, self).__init__()
        self.collecting = False
        self.sleep_event = threading.Event()


    def cancel(self):
        print(now_string(), "Cancelling thread")
        self.collecting = False
        self.sleep_event.set()

    def run(self):

        print(now_string(), "Starting thread")
        self.sleep_event.clear()
        self.collecting = True

        def _collect():

            while self.collecting and not self.sleep_event.is_set():
                feed_urls = db.get_all_feeds()

                for feed_url in feed_urls:

                    try:
                        resp = req.get(feed_url)
                    except Exception as e:
                        print(e)
                        continue

                    bs_obj = BeautifulSoup(resp.content, 'lxml-xml')

                    print(now_string(), "Collecting: " + feed_url)

                    items = bs_obj.find_all("item")

                    for item in items:
                        db.add_new_item(feed_url, item)
                
                
                print(now_string(), "Sleeping for: " + str(20*MINUTE))
                self.sleep_event.wait(timeout=20*MINUTE)

        _collect() 
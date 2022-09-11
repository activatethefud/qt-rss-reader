import db, time, threading
from config import *
import requests as req
from bs4 import BeautifulSoup

class Collector(threading.Thread):

    def __init__(self):
        super(Collector, self).__init__()
        self.collecting = False


    def cancel(self):
        self.collecting = False

    def run(self):

        self.collecting = True

        def _collect():

            while self.collecting:
                feed_urls = db.get_all_feeds()

                print(feed_urls)

                for feed_url in feed_urls:

                    try:
                        resp = req.get(feed_url)
                    except Exception as e:
                        print(e)
                        continue

                    bs_obj = BeautifulSoup(resp.content, 'lxml')

                    print("Collecting: " + feed_url)

                    items = bs_obj.find_all("item")

                    for item in items:
                        db.add_new_item(feed_url, item)
                
                
                print("Sleeping for: " + str(5*MINUTE))
                time.sleep(5*MINUTE)

        _collect() 
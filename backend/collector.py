import db, time, threading
from config import *
import requests as req
from bs4 import BeautifulSoup

class Collector:

    def __init__(self):
        self.collecting = True
        self.collect()
        pass


    def cancel(self):
        self.collecting = False
        self.collector_thread._stop()

    def collect(self):

        def _collect():

            while self.collecting:
                feed_urls = db.get_all_feeds()

                print(feed_urls)

                for (feed_url,) in feed_urls:

                    resp = req.get(feed_url)
                    bs_obj = BeautifulSoup(resp.content, 'lxml')

                    print("Collecting: " + feed_url)

                    items = bs_obj.find_all("item")

                    for item in items:
                        db.add_new_item(feed_url, item)
                
                time.sleep(5*MINUTE)
        
        self.collector_thread = threading.Thread(
            target = _collect()
        )

import requests as req
from config import *
import db
import requests as req
from bs4 import BeautifulSoup
import random as rd

def test_add_new_feed(feed_url = "https://www.politika.rs/rss/"):

        # Arrange
        db.delete_feed(feed_url)
        payload = {
                "url" : feed_url
        }

        # Assign
        resp = req.get(SERVER_URL + "/new_feed", params = payload)

        # Assert
        assert resp.text.strip() == payload["url"]

        # Cleanup
        db.delete_feed(feed_url)

def test_add_new_item(feed_url = EXAMPLE_RSS_FEED):

        resp = req.get(feed_url)
        bs_obj = BeautifulSoup(resp.content,'lxml-xml')
        items = bs_obj.find_all("item")

        item = items[1]

        db.delete_item(item)
        db.add_new_item(feed_url, item)
        
def test_get_feed_items(feed_url = EXAMPLE_RSS_FEED):
        resp = req.get(feed_url)
        print(resp.content)

tests = [
        test_add_new_feed,
        test_add_new_item,
        test_get_feed_items
]

if __name__ == "__main__":

        for test in tests:
                test()
        
        print("All tests pass!")

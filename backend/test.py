import requests as req
from config import *
import db

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


tests = [
        test_add_new_feed
]

if __name__ == "__main__":

        for test in tests:
                test()

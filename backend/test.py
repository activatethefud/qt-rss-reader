import requests as req
from config import *

def test_add_new_feed():

        # Arrange
        payload = {
                "url" : "https://www.politika.rs/rss/"
        }

        # Assign
        resp = req.get(SERVER_URL + "/new_feed", params = payload)

        # Assert
        assert resp.text.strip() == payload["url"]

tests = [
        test_add_new_feed
]

if __name__ == "__main__":

        for test in tests:
                test()

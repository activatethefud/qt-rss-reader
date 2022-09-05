import mariadb
import sys
from config import *

conn = mariadb.connect(
        user=DB_USER,
        password=DB_PASSWORD,
        host=DB_HOST_DEBUG,
        port=DB_PORT,
        database=DB_NAME
)

cur = conn.cursor()

def get_all_feeds():
        cur.execute("SELECT * FROM Feeds")
        for (url) in cur:
                print(url)

def select_feed(feed_url):
        cur.execute(f"SELECT Url FROM Feeds where Url = '{feed_url}'")
        return list(cur)

def delete_feed(feed_url):
        cur.execute(f"DELETE FROM Feeds WHERE Url = '{feed_url}'")
        conn.commit()

def add_new_feed(feed_url):
        cur.execute(f"INSERT INTO Feeds(Url) VALUES ('{feed_url}');")
        conn.commit()

def init():

        try:

                cur.execute("""
                        CREATE TABLE Feeds(
                                Url VARCHAR(255) PRIMARY KEY
                        );
                """)

        except:
                pass

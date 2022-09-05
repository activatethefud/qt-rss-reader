import mariadb
import sys
from config import *

conn = mariadb.connect(
        user=DB_USER
        password=DB_PASSWORD
        host=DB_HOST_DEBUG
        port=DB_POST
        database=DB_NAME
)

cur = conn.cursor()

def get_all_feeds():
        for row in cur.execute("SELECT * FROM Feeds"):
                print(row)

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

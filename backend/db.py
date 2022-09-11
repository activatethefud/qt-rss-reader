import mariadb
import sys
from config import *
import bs4

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
        return list(url for (url,) in cur)

def select_feed(feed_url):
        cur.execute(f"SELECT * FROM Items where Url = '{feed_url}'")
        return list(cur)

def delete_feed(feed_url):
        cur.execute(f"DELETE FROM Feeds WHERE Url = '{feed_url}'")
        conn.commit()

def add_new_feed(feed_url):
        try:
                cur.execute(f"INSERT INTO Feeds(Url) VALUES ('{feed_url}');")
                conn.commit()
        except Exception as e:
                print(e)

def delete_item(item: bs4.element.Tag):
        cur.execute("DELETE FROM Items WHERE Id = MD5(?)", (str(item),))
        conn.commit()

def add_new_item(url, item: bs4.element.Tag):

        cur.execute("SELECT * FROM Items WHERE Id = MD5(?) LIMIT 1", (str(item),))

        if len(list(cur)) > 0:
                return

        cur.execute("""
                INSERT INTO Items(Id, Url, Content) VALUES(
                        MD5(?),
                        ?,
                        ?
                )
        """,(str(item), url, str(item)))

        conn.commit()

def init():

        try:

                cur.execute("""
                        CREATE TABLE Feeds(
                                Url VARCHAR(255) PRIMARY KEY
                        );
                """)
                conn.commit()

                
        except:
                pass
        
        try:
                cur.execute("""
                        CREATE TABLE Items(
                                Id VARCHAR(255) PRIMARY KEY,
                                Url VARCHAR(255) NOT NULL,
                                Content TEXT NOT NULL,
                                Date TIMESTAMP NOT NULL DEFAULT NOW()
                        )
                """)

                conn.commit()

        except Exception as e:
                pass
import mariadb
import sys

conn = mariadb.connect(
        user='qt-rss-user',
        password='qt-rss-user-password',
        host='mysql-db',
        port=3306,
        database='qt-rss'
)

cur = conn.cursor()

def init():

        try:

                cur.execute("""
                        CREATE TABLE Feeds(
                                Url VARCHAR(255) PRIMARY KEY
                        );
                """)

        except:
                pass

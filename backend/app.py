from flask import Flask, request
import db

app = Flask(__name__)

@app.route('/new_feed', methods = ["GET"])
def new_feed():
        new_feed_url = request.args["url"]

        try:
                db.add_new_feed(new_feed_url)
        except:
                return "Db error", 500

        return new_feed_url, 200

@app.route('/delete_feed', methods = ["GET"])
def delete_feed():
        feed_url = requests.args["url"]

        try:
                db.delete_feed(feed_url)
        except:
                return "Db error", 500

        return feed_url, 200

@app.route("/")
def hello_world():
        return 'Hello, world!'

db.init()

#if __name__ == "__main__":
#        db.init()

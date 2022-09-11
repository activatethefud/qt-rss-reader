from flask import Flask, request, jsonify
import db
from collector import Collector

app: Flask = Flask(__name__)
_collector = None

@app.route('/all_feeds', methods = ["GET"])
def get_all_feeds():
        try:
                return jsonify(db.get_all_feeds())
        except Exception as e:
                return str(e), 500

@app.route('/feed_items', methods = ["GET"])
def get_feed_items():
        try:
                feed_url = request.args["url"]
                return jsonify(db.select_feed("feed_url"))
        except Exception as e:
                return str(e), 500

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

if __name__ == "__main__":
        db.init()
        _collector = Collector()
        _collector.start()
        app.run()
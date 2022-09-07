from flask import Flask, request, jsonify
import db

app = Flask(__name__)

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

db.init()

#if __name__ == "__main__":
#        db.init()

from flask import Flask, request
import db

app = Flask(__name__)

@app.route('/new_feed', methods = ["GET"])
def new_feed():
        new_feed_url = request.args["url"]
        db.add_new_feed(new_feed_url)

        return new_feed_url

@app.route("/")
def hello_world():
        return 'Hello, world!'

if __name__ == "__main__":
        db.init()

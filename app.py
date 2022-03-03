# app.py
from flask import Flask, request, jsonify
from data import queries
from dotenv import load_dotenv

load_dotenv()
app = Flask(__name__)

@app.route('/api/languages')
def languages():
    data=queries.get_languages()
    return jsonify(data)

# A welcome message to test our server
@app.route('/')
def index():
    return "<h1>Welcome to our server !!</h1>"

if __name__ == '__main__':
    # Threaded option to enable multiple instances for multiple user access support
    app.run(threaded=True, port=5000)

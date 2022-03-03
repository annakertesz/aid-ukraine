# app.py
from flask import Flask, request, jsonify
from data import queries
from dotenv import load_dotenv

from model.person import Person, PersonSchema
from model.status import Status

load_dotenv()
app = Flask(__name__)

people = [
  Person(5, "Anna", "ke@sd.ff", "234234", True, Status(1, "active"), "nothing"),
  Person(2, "Matyi", "fo@sd.ff", "234234", False, Status(1, "active"), "nothing"),
]

@app.route('/person')
def get_incomes():
  schema = PersonSchema(many=True)
  callables = schema.dump(
    filter(lambda p: p.night_call == True, people)
  )
  return jsonify(callables)


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

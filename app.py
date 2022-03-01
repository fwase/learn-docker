from src import UserRepo
from flask import Flask, request

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home():
    return "Ola, este eh o /home"

@app.route("/insert", methods=["POST"])
def insert():
    userRepo = UserRepo()
    body = request.json

    userRepo.insert_user(body.get("name"))

    return "Dado inserido"

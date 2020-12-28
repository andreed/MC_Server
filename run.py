# coding=utf-8
from flask import Flask, render_template, request
import json
app = Flask(__name__)

@app.route("/")
def hello():
    with open("config_worlds.json", "r") as read_file:
        worlds = json.load(read_file)

    sel_world = request.args.get("server")

    return render_template("start.html", worlds=worlds, sel_world=sel_world)

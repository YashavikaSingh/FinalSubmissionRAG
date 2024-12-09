from flask import Flask, request, jsonify
# from clearml import Task, Logger, PipelineController


app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to the ETL Flask App!"

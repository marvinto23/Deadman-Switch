from flask import Flask, request
import os
import json

app = Flask(__name__)

@app.route("/run_script")
def run_script():
    # code to run the script
    os.system("python script.py")
    return "Script Running"

@app.route("/config.json")
def config():
    with open('config.json', 'r') as f:
        config = json.load(f)
    return json.dumps(config)

if __name__ == "__main__":
    app.run(debug=True)

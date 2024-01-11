from flask import Flask, render_template, request, session
import pandas as pd
import pywhatkit
import os

app = Flask(__name__)
app.secret_key = 'Sopo2023*'

@app.route("/")
def index():
    return render_template('login.html')

if __name__=='__main__':
    app.run(debug='true')
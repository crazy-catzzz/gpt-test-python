import openai
from flask import Flask, render_template, request
from config import gpt_api_key

# Funzione che utilizza la API di OpenAI per ottenere una risposta ad un prompt
def ask(t):
    openai.api_key = gpt_api_key
    res = openai.Completion.create(
        engine = "text-davinci-003",
        prompt = t,
        temperature = 0.8,
        max_tokens = 1500,
    )
    # print(res)
    return res.choices[0].text


# App fatta con Flask
app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/', methods=['POST'])
def index_post():
    p = request.form['prompt']
    return render_template("res.html", data=ask(str(p)))
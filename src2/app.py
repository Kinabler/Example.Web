from flask import Flask, render_template, request, jsonify
import threading

app = Flask(__name__, template_folder="templates")

@app.route('/')
def home():
    return render_template('index.html')

def run_app(port):
    app.run(host='0.0.0.0', port=port, debug=True, use_reloader=False)

if __name__ == '__main__':
    run_app(1337)
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return " Hello from DevOps Pipeline Simulation!"

if __name__ == '__main__':
    app.run(debug=True, host='13.221.17.0', port=5000)

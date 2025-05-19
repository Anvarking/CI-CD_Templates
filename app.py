from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from GitHub Runner!"

if __name__ == '__main__':
    # Получаем порт из переменной окружения или используем 3500 по умолчанию
    port = int(os.environ.get('PORT', 3500))
    app.run(host='0.0.0.0', port=port, debug=True)
    
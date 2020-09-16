from flask import Flask, render_template

server = Flask(__name__)

@server.route('/')
<<<<<<< HEAD
def index():
    return render_template('index.html')
=======
def hello_world():
    return 'hello world! v4'
>>>>>>> 0845e211d8d12aa073a2466bc327a9908874f97d

if __name__ == '__main__':
    server.run(host='0.0.0.0')

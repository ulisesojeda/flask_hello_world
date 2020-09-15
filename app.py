from flask import Flask

server = Flask(__name__)

@server.route('/')
def hello_world():
    return 'hello world! v2'

if __name__ == '__main__':
    server.run()

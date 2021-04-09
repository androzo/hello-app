import socket, os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    kube_var = os.environ.get("MY_VAR")    
    return 'Hello World | my kube var is [{}]'.format(kube_var)

if __name__ == '__main__':
      app.run(host='0.0.0.0', port=8080)
      
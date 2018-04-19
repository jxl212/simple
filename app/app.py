from flask import Flask
import os
from pprint import pformat

app = Flask(__name__)

@app.route("/")
def hello():
    env = pformat(os.environ)
    ret =  f""
    for x in os.environ:
        print(x)
        ret += f"<pre>{x} :\t {os.environ.get(x)}</pre>"
    return f"<p>Flask inside Docker!!</p><p><pre>{pformat(list(os.environ.items()))}</pre></p>"


if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')

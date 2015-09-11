from flask import Flask
from flask import render_template
import random

from options import dice_pics

app = Flask(__name__)

@app.route('/')
def index():
	return render_template('dice.html')

if __name__ == '__main__':
	app.run(debug=True)
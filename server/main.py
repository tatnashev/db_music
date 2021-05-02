import os

from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

from . import handlers

app = Flask(__name__, instance_relative_config=True)
app.config.from_mapping(
    SECRET_KEY='dev-secret',
    DATABASE=os.path.join(app.instance_path, 'db_saved.sql'),
    SQLALCHEMY_DATABASE_URI=os.environ['DATABASE_URL'],
    SQLALCHEMY_TRACK_MODIFICATIONS=False
)
# db = SQLAlchemy(app)


# Main page handler
@app.route('/')
def hello():
    return render_template('index.html')


app.add_url_rule('/artists', view_func=handlers.artists_list_handler)

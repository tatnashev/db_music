import os

from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__, instance_relative_config=True)
app.config.from_mapping(
    SECRET_KEY='dev-secret',
    SQLALCHEMY_DATABASE_URI=os.environ['DATABASE_URL'],
    SQLALCHEMY_TRACK_MODIFICATIONS=False
)
db = SQLAlchemy(app)


from .handlers import list_objects_handler


# Main page handler
@app.route('/')
def main_page_handler():
    return render_template('index.html')


app.add_url_rule('/list_<obj_name>/<page_id>', view_func=list_objects_handler)

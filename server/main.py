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


from . import handlers


# Main page handler
@app.route('/')
def main_page_handler():
    return render_template('index.html')


# List genres/artists/countries
app.add_url_rule('/list_<obj_name>/<page_id>', view_func=handlers.list_objects_handler)


# Render exact artist
app.add_url_rule('/artist/<artist_id>', view_func=handlers.artist_handler)


# Filter artists by counttry/genre
app.add_url_rule('/artist_by/<by_object>/<int:object_id>,<int:page_id>', view_func=handlers.artists_by)


# Adding tracks
app.add_url_rule('/add_track', view_func=handlers.add_track_handler, methods=['GET', 'POST'])


# Return artists which names is like <artist_name>
app.add_url_rule('/artist_by_name/', view_func=handlers.artist_by_name)

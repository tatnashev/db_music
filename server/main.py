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


class Genre(db.Model):
    __tablename__ = 'genre'

    genre_id = db.Column(db.Integer, primary_key=True)
    genre_name = db.Column(db.String(30))


class Country(db.Model):
    __tablename__ = 'country'

    country_id = db.Column(db.Integer, primary_key=True)
    country_name = db.Column(db.String(50))


# Main page handler
@app.route('/')
def hello():
    return render_template('index.html')


@app.route('/artists')
def artists_list_handler():
    return render_template('artists.html')


@app.route('/genres')
def genres_list_handler():
    return render_template('genres.html')


@app.route('/countries')
def countries_list_handler():
    return render_template('countries.html')

from .main import db


class Genre(db.Model):
    __tablename__ = 'genre'

    genre_id = db.Column(db.Integer, primary_key=True)
    genre_name = db.Column(db.String(30))


class Country(db.Model):
    __tablename__ = 'country'

    country_id = db.Column(db.Integer, primary_key=True)
    country_name = db.Column(db.String(30))


class Musician(db.Model):
    __tablename__ = 'musician'

    musician_id = db.Column(db.Integer, primary_key=True)
    artist_id = db.Column(db.Integer, db.ForeignKey('artist.artist_id'))
    last_name = db.Column(db.String(30))
    first_name = db.Column(db.String(30))


genre_artist = db.Table('genre_artist',
    db.Column('artist_id', db.Integer, db.ForeignKey('artist.artist_id'), primary_key=True),
    db.Column('genre_id', db.Integer, db.ForeignKey('genre.genre_id'), primary_key=True)
)


country_artist = db.Table('country_artist',
    db.Column('artist_id', db.Integer, db.ForeignKey('artist.artist_id'), primary_key=True),
    db.Column('country_id', db.Integer, db.ForeignKey('country.country_id'), primary_key=True)
)


album_track = db.Table('album_track',
    db.Column('album_id', db.Integer, db.ForeignKey('album.album_id'), primary_key=True),
    db.Column('track_id', db.Integer, db.ForeignKey('track.track_id'), primary_key=True)
)


class Artist(db.Model):
    __tablename__ = 'artist'

    artist_id = db.Column(db.Integer, primary_key=True)
    artist_name = db.Column(db.String(50))
    bio = db.Column(db.String(1000))

    albums = db.relationship('Album', lazy=True)
    genres = db.relationship('Genre', secondary=genre_artist, lazy='subquery')
    countries = db.relationship('Country', secondary=country_artist, lazy='subquery')
    musicians = db.relationship('Musician', lazy=True)


class Album(db.Model):
    __tablename__ = 'album'

    album_id = db.Column(db.Integer, primary_key=True)
    artist_id = db.Column(db.Integer, db.ForeignKey(Artist.artist_id))
    album_year = db.Column(db.Integer)
    album_title = db.Column(db.String(120))

    tracks = db.relationship('Track', secondary=album_track, lazy='subquery')


class Track(db.Model):
    __tablename__ = 'track'

    track_id = db.Column(db.Integer, primary_key=True)
    track_title = db.Column(db.String(120))


def get_object_class(obj_name):
    if obj_name == 'genre':
        return Genre
    elif obj_name == 'country':
        return Country
    elif obj_name == 'artist':
        return Artist
    else:
        raise Exception('requested object not found')

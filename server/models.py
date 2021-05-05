from .main import db

class Genre(db.Model):
    __tablename__ = 'genre'

    genre_id = db.Column(db.Integer, primary_key=True)
    genre_name = db.Column(db.String(30))


class Country(db.Model):
    __tablename__ = 'country'

    country_id = db.Column(db.Integer, primary_key=True)
    country_name = db.Column(db.String(50))

def get_object_class(obj_name):
    if obj_name == 'genre':
        return Genre
    elif obj_name == 'country':
        return Country
    else:
        raise Exception('requested object not found')

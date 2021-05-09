from .models import Genre, Country, Musician, Artist, Album, Track, get_object_class

from flask import abort, render_template


K_OBJECT_LIMIT = 10


def list_objects_handler(obj_name, page_id):
    page_id = int(page_id) - 1
    
    if page_id < 0:
        page_id = 0
    
    factory = get_object_class(obj_name)
    elements = factory.query.limit(K_OBJECT_LIMIT).offset(page_id * K_OBJECT_LIMIT).all()
    
    return render_template(
        'listings/{}.html'.format(obj_name),
        elements=elements,
        page_id=page_id + 1
    )


def artis_handler(artist_id):
    artist = Artist.query.filter_by(artist_id=int(artist_id)).all()

    if len(artist) == 0:
        abort(404)

    return render_template('artist.html', artist=artist[0])


def artists_by(by_object, object_id, page_id):
    query = Artist.query

    if page_id < 1:
        abort(404)

    if by_object == 'genre':
        query = query.join(Artist.genres).filter(Genre.genre_id == object_id)
    elif by_object == 'country':
        query = query.join(Artist.countries).filter(Country.country_id == object_id)
    else:
        abort(404)
    
    query = query.limit(K_OBJECT_LIMIT).offset((page_id - 1) * K_OBJECT_LIMIT)
    elements = query.all()
    
    return render_template('listings/artist.html',
        elements=elements,
        page_id=page_id,
        object_id=str(object_id)
    )

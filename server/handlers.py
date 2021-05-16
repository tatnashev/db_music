from .models import (
    Genre,
    Country,
    Musician,
    Artist,
    Album,
    Track,
    album_track,
    get_object_class,
    db
)
from flask import abort, render_template, request

import json


K_OBJECT_LIMIT = 10
K_SEARCH_OBJECT_LIMIT = 5


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


def artist_handler(artist_id):
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


def add_track_handler():
    if request.method == 'GET':
        return render_template('add_track.html')
    elif request.method == 'POST':
        track_title = request.form.get('track_title', None)
        album_id = int(request.form.get('album_id', 0))

        if not track_title or not album_id:
            return {'success': False}
        
        trackAdd = Track(track_title=track_title)
        db.session.add(trackAdd)
        db.session.flush()

        albumTrackAdd = album_track.insert().values(album_id=album_id, track_id=trackAdd.track_id)
        db.session.execute(albumTrackAdd)
        db.session.commit()

        return {'success': True}
    else:
        abort(404)


def artist_by_name():
    artist_name = request.args.get('name')
    
    if not artist_name:
        abort(404)

    filter_str = '%{}%'.format(artist_name)
    elements = Artist.query.filter(Artist.artist_name.ilike(filter_str)).limit(K_SEARCH_OBJECT_LIMIT).all()

    return {
        'artists': [{
            'id': elem.artist_id,
            'name': elem.artist_name.strip(),
            'albums': [
                {
                    'id': album.album_id,
                    'title': album.album_title.strip()
                } for album in elem.albums
            ]
        } for elem in elements]
    }

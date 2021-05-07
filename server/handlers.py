from . import models

from flask import abort, render_template


K_OBJECT_LIMIT = 10


def list_objects_handler(obj_name, page_id):
    page_id = int(page_id) - 1
    
    if page_id < 0:
        page_id = 0
    
    factory = models.get_object_class(obj_name)
    elements = factory.query.limit(K_OBJECT_LIMIT).offset(page_id * K_OBJECT_LIMIT).all()
    
    return render_template(
        'listings/{}.html'.format(obj_name),
        elements=elements,
        page_id=page_id + 1
    )


def artis_handler(artist_id):
    artist = models.Artist.query.filter_by(artist_id=int(artist_id)).all()

    if len(artist) == 0:
        abort(404)

    return render_template('artist.html', artist=artist[0])

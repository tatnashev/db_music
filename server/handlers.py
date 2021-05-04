from . import models

from flask import render_template


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

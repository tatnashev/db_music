from flask import render_template


def artists_list_handler():
    return render_template('artists.html')

import yandex_music
from yandex_music.client import Client
from collections import defaultdict
import numpy as np


class AlbumData:
    def __init__(self):
        self.name = ''
        self.year = 0
        self.tracks = []


class ArtistData:
    def __init__(self):
        self.artist = ''
        self.albums = []
        self.brief_bio = ''
        self.genres = []
        self.country = ''
        self.key = 0


NUM_ARTISTS = 1
ARTIST_IDS = [68227, 13002, 9367]
countries = ['Великобритания', 'Германия', 'Швеция']

# Your login and password 
client = Client.from_credentials('', '')

data = []
for i, ARTIST_ID in enumerate(ARTIST_IDS):
    obj = ArtistData()
    obj.key = i + 1
    obj.country = countries[i]

    # artist, albums and genres collecting

    artists = client.artists(ARTIST_ID)
    for artist in artists:
        print(artist)

        obj.artist = artist.name
        albums_id = []

        for album in artist.get_albums():
            albums_id.append(album.id)

        for album_id in albums_id:
            album = client.albums_with_tracks(album_id)

            tracks = []
            for i, volume in enumerate(album.volumes):
                if len(album.volumes) > 1:
                    tracks.append(f'💿 Диск {i + 1}')
                tracks += volume

            track_titles = []
            for track in tracks:
                if isinstance(track, str):
                    continue
                track_titles.append(track['title'])

            album_data = AlbumData()
            album_data.name = album.title
            album_data.tracks = track_titles
            album_data.year = album.year
            obj.albums.append(album_data)

            # genres
            obj.genres = artist.genres

    # brief bio collecting
    brief = client.artists_brief_info(ARTIST_ID)
    obj.brief_bio = brief['artist']['description']['text']

    data.append(obj)


# Collecting albums and tracks
album_idx = 1
track_idx = 1
for record in data:
    for album in record.albums:
        for track in album.tracks:
            print('(', album_idx, ', ', track_idx, '),', sep='')
            track_idx += 1
        album_idx += 1

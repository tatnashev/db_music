export FLASK_APP=server/main.py
export FLASK_ENV=development
export DATABASE_URL="postgresql:///music_database"

flask run

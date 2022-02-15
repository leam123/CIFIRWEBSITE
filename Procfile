web: gunicorn cifirproject.wsgi:application --log-file - --log-level debug
web: python manage.py runserver 0.0.0.0:\$PORT
heroku ps:scale web=1
python manage.py collectstatic --noinput
python manage.py migrate
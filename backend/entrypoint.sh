gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi
sleep 10
python manage.py migrate
sleep 10
python manage.py collectstatic

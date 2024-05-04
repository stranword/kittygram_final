#!/bin/bash

gunicorn kittygram.wsgi:application --bind 0.0.0.0:8000
sleep 10
python manage.py migrate
python manage.py collectstatic
python manage.py cp -r /app/collected_static/. /backend_static/static/
echo 'yes'
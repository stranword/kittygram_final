#!/bin/bash

python manage.py migrate

python manage.py collectstatic --noinput

python manage.py cp -r /app/collected_static/. /backend_static/static/

gunicorn kittygram.wsgi:application --bind 0.0.0.0:8000
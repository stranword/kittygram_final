#!/bin/bash

gunicorn kittygram.wsgi:application --bind 0.0.0.0:8000
sleep 10
python manage.py migrate
python manage.py collectstatic
mv /app/collected_static/* /backend_static/static/
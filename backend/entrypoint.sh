#!/bin/bash

gunicorn kittygram_backend.wsgi:application --bind 0.0.0.0:8000

/usr/local/bin/python /app/manage.py migrate

/usr/local/bin/python /app/manage.py collectstatic --noinput

mv /app/collected_static/* /backend_static/static/


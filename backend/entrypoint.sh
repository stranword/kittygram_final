#!/bin/bash

/usr/local/bin/python /app/manage.py migrate

/usr/local/bin/python /app/manage.py collectstatic --noinput

mv /app/collected_static/* /backend_static/static/

gunicorn kittygram_backend.wsgi:application --bind 0.0.0.0:8000
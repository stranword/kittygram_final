#!/bin/bash

python manage.py migrate
python manage.py collectstatic
gunicorn kittygram.wsgi:application --bind 0.0.0.0:8000

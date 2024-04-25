#!/bin/bash

gunicorn kittygram.wsgi:application --bind 0.0.0.0:8000
python manage.py migrate
python manage.py collectstatic


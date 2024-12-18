#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT usda_farmers_web_ap_50406.wsgi:application

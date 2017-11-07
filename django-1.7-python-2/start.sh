#!/bin/sh
exec gunicorn main.wsgi:application --bind 0.0.0.0:80 --workers $GUNICORN_WORKER_COUNT

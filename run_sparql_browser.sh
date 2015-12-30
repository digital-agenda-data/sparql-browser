#!/bin/sh
export SPARQL_ENDPOINT=http://digital-agenda-data.eu/sparql
export REVERSE_PROXY=on
export PYTHONUNBUFFERED=on
export HARDCODED_SCRIPT_NAME=/sparql-browser
sandbox/bin/python manage.py runserver -p 55000 -t 127.0.0.1

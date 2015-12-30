# sparql-browser
A simple sparql client written in Python/Flask

Prerequisites
---------------

Python 2.7 with pip and virtualenv

Installation
---------------

    virtualenv sandbox
    source sandbox/bin/activate
    pip install -r requirements-dev.txt

Environment variables
------------------------

    SPARQL_ENDPOINT=http://digital-agenda-data.eu/sparql
    REVERSE_PROXY=on
    PYTHONUNBUFFERED=on
    HARDCODED_SCRIPT_NAME=/sparql-browser

Running
--------

    python manage.py runserver -p 55000 -t 127.0.0.1

httpd.conf
----------

    ProxyPass /sparql-browser http://localhost:55000 timeout=300 retry=0
    ProxyPassReverse /sparql-browser http://localhost:55000 timeout=300

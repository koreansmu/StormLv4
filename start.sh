#!/bin/bash

set -e
export FLASK_APP=Vortexx:create_app
gunicorn -w 4 -b 0.0.0.0:${PORT:-8080} Vortex:create_app &
python3 -m AnonXMusic

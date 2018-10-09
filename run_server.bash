#!/usr/bin/env bash

python ./render.py

python -m rasa_core.run -d models/dialogue -u default/current \
       --port 5002 --credentials credentials.yml \
       --cors * --endpoints endpoints.yml
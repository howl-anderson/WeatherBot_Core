#!/usr/bin/env bash


python -m rasa_core.train \
  --online -o models/dialogue \
  -u default/current \
  --nlu_threshold 0.4 \
  --core_threshold 0.4 \
  -d domain.yml -s stories.md \
  --endpoints endpoints.yml
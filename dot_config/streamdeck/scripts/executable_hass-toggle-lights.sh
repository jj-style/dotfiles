#!/bin/bash

source ~/.bash.d/environment-secrets.bash

hass-cli service call light.toggle --arguments entity_id="$1"

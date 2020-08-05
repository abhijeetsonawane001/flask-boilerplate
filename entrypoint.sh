#!/usr/bin/env bash
if [ "$FLASK_ENV" == "development" ]  && [ -f dev-requirements.txt ]; then
    echo "installing dev dependencies" 
    pip install --no-cache-dir -r dev-requirements.txt
fi
exec "$@"
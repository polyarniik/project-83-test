#!/usr/bin/env bash

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
uv sync
uv run gunicorn -w 5 -b 0.0.0.0:8000 page_analyzer:app

#!/bin/bash

bundle install --verbose

# Create a virtual environment and install Python requirements
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

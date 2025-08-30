#!/bin/bash

# Install npm packages
npm i

# Install Ruby gems
bundle install --verbose

# Install Python packages using virtual environment to avoid PEP 668 error
if [ -f "requirements.txt" ]; then
    python3 -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
fi
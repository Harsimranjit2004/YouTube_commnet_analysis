#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Upgrade pip
python -m pip install --upgrade pip

# Install Python dependencies
pip install -r requirements.txt

# Generate Jupyter Notebook config (if not already present)
jupyter notebook --generate-config

# Set up Jupyter Notebook password (Optional)
# Uncomment the lines below to set a password
# echo "c.NotebookApp.password = 'sha1:your_hashed_password'" >> /home/vscode/.jupyter/jupyter_notebook_config.py

# Export Flask environment variables
echo "export FLASK_APP=app.py" >> ~/.bashrc
echo "export FLASK_ENV=development" >> ~/.bashrc

# Source the updated bashrc
source ~/.bashrc

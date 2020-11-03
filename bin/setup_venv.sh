#!/bin/bash
# execute command: source bin/setup_venv.sh

DIR_FOLDER=$(dirname "${BASH_SOURCE[0]}")
PARENT_FOLDER=$(dirname $DIR_FOLDER)

PYTHON_PATH="python3.6"
VENV_PATH="/~/dev/venv/ansible-k8s"
mkdir -p $VENV_PATH

#$PYTHON_PATH -m venv $VENV_PATH
source $VENV_PATH/bin/activate
pip install --upgrade pip
pip install -r $PARENT_FOLDER/requirements.txt


# roles folder
mkdir -p $PARENT_FOLDER/roles/internal_roles


cd $PARENT_FOLDER

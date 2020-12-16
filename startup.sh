#!/bin/bash 
sudo apt update
sudo apt-get install python3-venv
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
sudo mkdir /opt/flask_todo_db
sudo chown -R jenkins /opt/flask_todo_db
sudo systemctl daemon-reload
sudo systemctl stop flask-todo-list.service
sudo systemctl start flask-todo-list.service

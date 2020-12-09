from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+pymysql://root:password@35.246.16.254/flask_todo_db"

db = SQLAlchemy(app)

from application import routes
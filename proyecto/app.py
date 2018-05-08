from flask import Flask, render_template, request
from config import Config
from forms import LoginForm
from flask_bootstrap import Bootstrap
from flask_login import login_user, login_required, LoginManager, logout_user
#from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)
app.config.from_object(Config)
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "login"
Bootstrap(app)

@app.route("/")
@app.route("/index")
def index():
	return(render_template('index.html', title = "Index"))


@app.route("/login", methods = ["GET", "POST"])
def login():
	form_login = LoginForm()
	return(render_template('login.html', title = "Login", form = form_login))


@app.route("/logout")
@login_required
def logout():
    logout_user()
    return(redirect( url_for("login") ))

@app.route("/cliente")
@login_required
def cliente_interno():
	return(render_template("cliente.html", title = "Cliente"))


if __name__ == "__main__":
	app.run()

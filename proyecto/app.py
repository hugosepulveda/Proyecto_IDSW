from flask import Flask, render_template, request
from flask_login import login_user, login_required, LoginManager, logout_user
#from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "login"

@app.route("/")
def main():
	render_template(url_for("index"))
	
@app.route("/index")
def pag_index():
	return("hola c:")
	
@app.route("/login", methods = ["GET", "POST"])
def login():
	"""if current_user.is_authenticated:
		return redirect(url_for('index'))"""
	#render_template("login.html", title = "Login")
	pass

@app.route("/logout")
@login_required
def logout():
    logout_user()
    return redirect( url_for("login") )
    
if __name__ == "__main__":
	app.run()
	

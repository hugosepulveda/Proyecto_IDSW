from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
	return "Proyecto IDSW v0.000001"
    
if __name__ == "__main__":
	app.run()
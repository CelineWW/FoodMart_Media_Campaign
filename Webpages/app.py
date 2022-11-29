import os
from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)
# from flask_sqlalchemy import SQLAlchemy
# db = SQLAlchemy()

app = Flask(__name__)

# def create_app():
#     app = Flask(__name__)
    
#     with app.app_context():
#         init_db()

#     return app


@app.route("/")
def index():
    return render_template("index.html")

@app.route("/dataset_sample")
def dataset_sample():
    return render_template("dataset_sample.html")

@app.route("/machine_learning")
def machine_learning():
    return render_template("machine_learning.html")


@app.route("/sql_database")
def sql_database():
    return render_template("sql_database.html")
    
@app.route("/tableau_store")
def tableau_store():
    return render_template("tableau_store.html")

@app.route("/tableau_customer")
def tableau_customer():
    return render_template("tableau_customer.html")    

@app.route("/our_team")
def our_team():
    return render_template("our_team.html")

@app.route("/store_heatmap")
def store_heatmap():
    return render_template("store_heatmap.html")    

@app.route("/customer_heatmap")
def customer_heatmap():
    return render_template("customer_heatmap.html")   

if __name__=="__main__":
    app.run()

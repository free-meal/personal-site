from flask import Flask, render_template, send_from_directory
import os

app = Flask(__name__)


@app.route('/')
def about_page():
    return render_template("about.html")


@app.route('/what-i-do')
def projects_page():
    return render_template("projects.html")


@app.route('/contact')
def contact_page():
    return render_template("contact.html")


@app.route('/favicon.ico')
def favicon():
    return send_from_directory(os.path.join(app.root_path, 'static'), 'favicon.ico', mimetype='image/ico')


if __name__ == '__main__':
    app.run(debug=True)

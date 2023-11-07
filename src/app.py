from flask import Flask
from flask_cors import CORS

from config import config

# Rutas
from routes import Movie

# Declarar la aplicacion
app = Flask(__name__)

CORS(app, resources={"*": {'origins': 'http://localhost:9300'}})

def page_not_found(error):
    return "<h1>Not found page</h1>", 404


if __name__ == '__main__':
    app.config.from_object(config['development'])

    # Blueprints
    app.register_blueprint(Movie.main, url_prefix='/api/movies')

    # Manejadores de error
    app.register_error_handler(404, page_not_found)
    app.run()

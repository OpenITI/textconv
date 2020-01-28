import falcon
from .text import Text

api = application = falcon.API()

text = Text()
api.add_route('/text', text)

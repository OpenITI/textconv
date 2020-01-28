import falcon
import oimdp


class Text(object):

    def on_post(self, req, resp):
        data = str(req.stream.read(), 'utf-8')
        document = oimdp.parse(data)
        resp.body = document.get_clean_text()
        resp.content_type = "text/plain; charset=UTF-8"

# OpenITI mARkdown Text Converter

A simple Web API to convert mARkdown documents into other formats.

## Installation

Requires python 3.

```
$ pip install -r requirements
```

To run a test server (just a suggestion):

```
$ pip install gunicorn
$ gunicorn --reload textconv.app
```

## API

### Plain text

```
/text/
```

Example

```
$ curl -X POST --data-binary @MARKDOWNFILE http://localhost:8000/text
```

# Other converters

This API currently only provides an endpoint for mARkdown to plain text transformation, and other converters will be added later. Here is a list of other mARkdown converters we have already worked on:

* [mARkdown to HTML](https://github.com/OpenITI/openiti/blob/master/new_books/convert/md2html.py)

Published under a GNU AGPL 3.0 License.

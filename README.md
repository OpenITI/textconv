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

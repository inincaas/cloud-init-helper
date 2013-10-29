Cloud Init Helper
-----------------

A simple heroku-hosted utility to offer some specific functionality to
support dynamically generating cloud-init-compatible scripts.

This util allows you to easily include a URL to get functionality rather
than messing with multipart files, etc.

For example, to write a value into a file using this app hosted on heroku:

http://cloud-init-helper.herokuapp.com/echofile?file=/etc/build_sha&content=6cbf1aa387

which results in an HTTP 200 with `Content-Type: text/x-shellscript` and the body

```
#!/bin/sh
echo "6cbf1aa387" > /etc/build_sha
```

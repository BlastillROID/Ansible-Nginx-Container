#!/usr/bin/env bash
HTMLFILE="/usr/share/nginx/html/index.html"
TIMESTAMP=`date "+%s"`

echo "<!doctype html>
<html>
  <head>
    <title>It works !!</title>
  </head>
  <body>
    <p>if you see this page , it means that this project is <strong>functional</strong>. </p>
    <br>
    <p> this file was created at $TIMESTAMP </p>
  </body>
</html> " > $HTMLFILE



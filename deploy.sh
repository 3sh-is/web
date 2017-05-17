#!/bin/bash

npm run build

source ~/.3sh/ftp-credentials.env

cd ./dist
date > lastupload
IFS=$ORIGIFS
# Send updates to server
    ncftp <<EOF
    open -u $FTPUSER -p $FTPPASS $FTPHOST
    cd /public_html/
    put *
    put -R *
    quit
 EOF

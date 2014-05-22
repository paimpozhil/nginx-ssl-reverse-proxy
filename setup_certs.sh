#!/bin/sh

# simple script to create an SSL certificate. taken from http://www.ravellosystems.com/blog/all-you-need-to-know-to-configure-ssl-offloading/

openssl genrsa -out server.key 2048
openssl req -new -key server.key -out server.csr
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

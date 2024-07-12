#!/bin/bash

rm -rf /etc/letsencrypt/live/certfolder*

certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos

rm -rf /Jenkins/cert.pem
rm -rf /Jenkins/key.pem

cp /etc/letsencrypt/live/certfolder*/fullchain.pem /Jenkins/cert.pem
cp /etc/letsencrypt/live/certfolder*/privkey.pem /Jenkins/key.pem

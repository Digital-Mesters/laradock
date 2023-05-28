#!/bin/bash

letsencrypt certonly --webroot -w /var/www/letsencrypt -d "$CN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/live/"$CN"/cert.pem /var/certs/"$CN"-cert1.pem
cp /etc/letsencrypt/live/"$CN"/chain.pem /var/certs/chain1.pem
cp /etc/letsencrypt/live/"$CN"/fullchain.pem /var/certs/fullchain1.pem
cp /etc/letsencrypt/live/"$CN"/privkey.pem /var/certs/"$CN"-privkey1.pem


#!/usr/bin/env bash

NginxConfB64=$(base64 nginx.conf)

sed -e s/REPLACE_NginxConfB64/$NginxConfB64/g base_script.txt > setup_script.sh

ServerConfB64=$(base64 server.conf)

sed -i.bak s/REPLACE_ServerConfB64/$ServerConfB64/g setup_script.sh

rm setup_script.sh.bak

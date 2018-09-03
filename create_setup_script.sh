#!/usr/bin/env bash

NginxConfB64=$(base64 nginx.conf)

sed -e s/REPLACE_NginxConfB64/$NginxConfB64/g base_script.txt > setup_script.sh

DefaultServerConfB64=$(base64 default.conf)

sed -i.bak s/REPLACE_DefaultServerConfB64/$DefaultServerConfB64/g setup_script.sh

rm setup_script.sh.bak

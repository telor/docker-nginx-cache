#!/bin/bash -e
envs=`printenv`

for env in $envs
do
    IFS== read name value <<EOF
$env
EOF

    sed -i "s|\${${name}}|${value}|g" /etc/nginx/conf.d/default.conf
done
cat /etc/nginx/conf.d/default.conf 

nginx -g 'daemon off;'
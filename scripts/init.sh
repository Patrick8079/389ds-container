#!/bin/sh
sleep 15
/usr/sbin/dsconf -D 'cn=Directory Manager' -w $DS_INIT_BIND_DN_PASSWORD $DS_INIT_PROTOCOL://$DS_INIT_TARGET_HOST:$DS_INIT_PORT backend create --suffix $DS_INIT_SUFFIX_NAME --be-name $DS_INIT_BE_NAME
ldapmodify -a -D 'cn=Directory Manager' -H $DS_INIT_PROTOCOL://$DS_INIT_TARGET_HOST:$DS_INIT_PORT -f /root/example.ldif -w $DS_INIT_BIND_DN_PASSWORD -c -x
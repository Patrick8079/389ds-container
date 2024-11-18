#!/bin/sh
sleep 15
/usr/sbin/dsconf -D 'cn=Directory Manager' -w 123456 ldap://ldap:3389 backend create --suffix dc=example,dc=com --be-name userRoot
ldapmodify -a -D 'cn=Directory Manager' -H ldap://ldap:3389 -f /root/example.ldif -w 123456 -c -x
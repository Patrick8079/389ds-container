FROM docker.io/almalinux/9-minimal
RUN microdnf -y install openldap-clients python3-lib389 --refresh --best --nodocs --noplugins --setopt=install_weak_deps=0 && microdnf -y clean all
COPY ./ldif/example.ldif /root/example.ldif
COPY ./scripts/init.sh /root/init.sh
RUN chmod +x /root/init.sh
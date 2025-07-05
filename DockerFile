FROM quay.io/keycloak/keycloak:latest

ENV KEYCLOAK_ADMIN=git.manager
ENV KEYCLOAK_ADMIN_PASSWORD=4245-gitmanager

RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--hostname-strict=false", "--proxy=edge", "--http-relative-path=/auth"]
FROM jauderho/dnscontrol:v4.1.0@sha256:802f41e9e39103299aeb8d601f9aa2200218aec990f4829744e41f0c46750d74

LABEL repository="https://github.com/wblondel/dnscontrol-action"
LABEL maintainer="William Gérald Blondel <contact@williamblondel.fr>"

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash

COPY README.md entrypoint.sh bin/filter-preview-output.sh /
ENTRYPOINT ["/entrypoint.sh"]

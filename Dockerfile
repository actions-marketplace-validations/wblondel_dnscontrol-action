FROM jauderho/dnscontrol:v3.31.0@sha256:a3c82529a04918d9c1a47dad59dd43038f29016380230c39112d5d5100cc16e1

LABEL repository="https://github.com/wblondel/dnscontrol-action"
LABEL maintainer="William Gérald Blondel <contact@williamblondel.fr>"

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash

COPY README.md entrypoint.sh bin/filter-preview-output.sh /
ENTRYPOINT ["/entrypoint.sh"]

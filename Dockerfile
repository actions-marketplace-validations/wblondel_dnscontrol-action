FROM jauderho/dnscontrol:v3.30.0@sha256:f6734a980675dcc68e054918faf98b8cf761c211a384d8f5df1165d96904a965

LABEL repository="https://github.com/wblondel/dnscontrol-action"
LABEL maintainer="William Gérald Blondel <contact@williamblondel.fr>"

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash

COPY README.md entrypoint.sh bin/filter-preview-output.sh /
ENTRYPOINT ["/entrypoint.sh"]

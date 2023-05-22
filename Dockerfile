FROM jauderho/dnscontrol:v4.0.1@sha256:836d54e9b57793be61fc0f3404f1aa15ce9d51d14012155dd0adc6b55e24401a

LABEL repository="https://github.com/wblondel/dnscontrol-action"
LABEL maintainer="William Gérald Blondel <contact@williamblondel.fr>"

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash

COPY README.md entrypoint.sh bin/filter-preview-output.sh /
ENTRYPOINT ["/entrypoint.sh"]

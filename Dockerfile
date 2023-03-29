FROM caddy:2.6.4-alpine

RUN --mount=type=secret,id=api_key echo ${api_key}

COPY . /usr/share/caddy/

RUN sed -i -r "s/secret.API_KEY/${api_key}/g" /usr/share/caddy/assets/js/main.js
FROM alpine:latest
MAINTAINER Sam Larsen

RUN apk add --update nginx \
  && rm -rf /var/cache/apk/* \
  && chown nginx:nginx /var/log/nginx

COPY nginx/nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/index.html
COPY vendors /usr/share/nginx/html/vendors

USER nginx

CMD ["nginx", "-g", "daemon off;"]

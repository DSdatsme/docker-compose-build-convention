FROM nginx as base

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

FROM base as nginx1

COPY ./nginx1/index.html /usr/share/nginx/html/index.html

FROM base as nginx2

COPY ./nginx2/index.html /usr/share/nginx/html/index.html

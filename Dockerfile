FROM nginx as base

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

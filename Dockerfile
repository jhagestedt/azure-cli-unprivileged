FROM mcr.microsoft.com/azure-cli:2.59.0

RUN apk upgrade && apk add shadow openssl
RUN addgroup -g 1000 azurecli
RUN adduser -u 1000 -G azurecli -s /bin/bash -D azurecli
RUN mkdir -p /home/azurecli/.azure && \
    chown -R azurecli:azurecli /home/azurecli/.azure

USER azurecli
WORKDIR /home/azurecli
ENTRYPOINT ["az"]

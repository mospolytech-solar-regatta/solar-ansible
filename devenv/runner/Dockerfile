FROM alpinelinux/docker-cli
RUN apk add --no-cache curl
RUN apk add --no-cache docker-cli-compose
COPY devenv/runner/app/ /app/
WORKDIR /app
ENTRYPOINT ["sh", "run.sh"]

FROM docker:latest

RUN apk add --no-cache docker-credential-ecr-login --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN mkdir /root/.docker/
RUN touch /root/.docker/config.json
RUN echo '{"credsStore": "ecr-login"}' >> /root/.docker/config.json
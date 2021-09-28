FROM  alpine:latest
LABEL maintainer="Davidson"

COPY . /opt/test_circleci
WORKDIR /opt/test_circleci

RUN export NODE_ENV=production \
  && apk update \
  && apk add nodejs \
  && apk add npm \
  && npm install

ENTRYPOINT ["./entrypoint.sh"]
CMD ["start"]

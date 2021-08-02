FROM ruby:2.7-alpine as jekyll

RUN apk add --no-cache build-base gcc bash cmake git curl nodejs npm

RUN gem install bundler -v "~>1.0" && gem install bundler jekyll:3.9

EXPOSE 4000

WORKDIR /site

ENTRYPOINT [ "jekyll" ]

CMD [ "--help" ]


FROM jekyll as jekyll-serve

COPY docker-entrypoint.sh /usr/local/bin/
COPY update_bootstrap.sh /usr/local/bin/

RUN chmod 777 /usr/local/bin/docker-entrypoint.sh \
  && ln -s /usr/local/bin/docker-entrypoint.sh /

RUN chmod 777 /usr/local/bin/update_bootstrap.sh \
  && ln -s /usr/local/bin/update_bootstrap.sh /

RUN [ "update_bootstrap.sh" ]

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]

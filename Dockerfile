FROM cnosuke/ruby23-base
MAINTAINER cnosuke

RUN mkdir -p /app
COPY app/Gemfile /app/Gemfile
COPY app/Gemfile.lock /app/Gemfile.lock
RUN cd /app && bundle install
ADD app /app

WORKDIR /app

CMD ["bundle", "exec", "ruboty"]

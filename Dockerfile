FROM cnosuke/ruby22-base
MAINTAINER cnosuke

RUN mkdir -p /app
COPY app/Gemfile /app/Gemfile
COPY app/Gemfile.lock /app/Gemfile.lock
RUN cd /app && bundle install

ADD app /app

CMD ["/app/run_ruboty.sh"]

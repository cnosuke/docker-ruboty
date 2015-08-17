# docker-ruboty
Ruboty on Docker

# How to run

You need to run redis container first.
See the official redis container document on Dockerhub if you need.

```sh
% mkdir your_working_directory

% cd your_working_directory

% cat << EOF >> Dockerfile
FROM cnosuke/docker-ruboty
MAINTAINER cnosuke

COPY env /app/.env

CMD ["/app/run_ruboty.rb"]
EOF

% curl https://raw.githubusercontent.com/cnosuke/docker-ruboty/master/app/env.sample -o env

% vi env # Edit configurations to run Ruboty with ENV

% docker build -t ruboty .

% docker run -d --link redis:db ruboty
```

# LICENSE
[MIT License](http://opensource.org/licenses/MIT).

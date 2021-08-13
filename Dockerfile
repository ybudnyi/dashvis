FROM ruby:1

RUN apt-get update
RUN apt-get install -y build-essential git libmysqlclient-dev libpq-dev ruby-dev nodejs postgresql-client
COPY . ./demo2
RUN cd bin && ./setup
EXPOSE 3000/tcp
CMD ["demo2/bin/start"]

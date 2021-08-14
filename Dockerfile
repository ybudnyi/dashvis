FROM myregistry.domain.com/ruby:new

RUN apt-get update
RUN apt-get install -y build-essential git libmysqlclient-dev libpq-dev ruby-dev nodejs postgresql-client
COPY . ./demo2
RUN cd demo2 && bin/setup
EXPOSE 3000/tcp
CMD ["bundle", "exec", "bin/rails", "server", "-p", "$PORT", "-e", "$RAILS_ENV"]

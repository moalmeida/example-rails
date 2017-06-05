FROM rails:5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app
# RUN rake db:migrate

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

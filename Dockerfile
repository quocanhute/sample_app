FROM ruby:3.2.2
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler && bundle install
COPY . /app/
CMD ["rails", "server", "-b", "0.0.0.0"]

FROM circleci/ruby:2.6.5-node-browsers

USER root

RUN apt-get update -qq && apt-get install -y postgresql-client cmake

RUN mkdir /var/app

WORKDIR /var/app

COPY Gemfile .
COPY Gemfile.lock .
COPY package.json .
COPY package-lock.json .

RUN gem update --system && gem install bundler
RUN bundle install --jobs 4
RUN npm install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]

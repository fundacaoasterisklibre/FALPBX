FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  
RUN mkdir /FALPBX
WORKDIR /FALPBX
COPY Gemfile /FALPBX/Gemfile
COPY Gemfile.lock /FALPBX/Gemfile.lock
RUN bundle install
COPY . /FALPBX

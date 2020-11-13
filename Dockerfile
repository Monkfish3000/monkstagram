FROM ruby:2.6.6

# Copy folder app contents into container
COPY . .

# Install bundler
RUN gem install bundler

# Install dependencies
RUN bundle install

# Fix permissions on temp folder
RUN chmod 1777 /tmp

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt install yarn -y

# Install yarn dependencies
RUN yarn install --check-files

# Run application
CMD [ "bundle","exec", "rails", "s", "-b", "localhost", "-p", "3000"  ]
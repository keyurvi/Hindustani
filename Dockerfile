FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /Hindustani
WORKDIR /Hindustani
COPY Gemfile /Hindustani/Gemfile
COPY Gemfile.lock /Hindustani/Gemfile.lock
RUN gem install bundler -v 2.0.1
RUN gem update bundler
RUN bundle update devise
RUN bundle install
COPY . /Hindustani

# Add a script to be executed every time the container starts.
#COPY entrypoint.sh /usr/bin/
#RUN chmod +x /usr/bin/entrypoint.sh
#ENTRYPOINT ["entrypoint.sh"]
#EXPOSE 3000

# Start the main process.
CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]
#CMD ["rails", "server", "-b", "0.0.0.0"]
FROM ruby:2.7.1
RUN apt update && apt install -y nodejs
RUN gem install rails -v '5.2.1'
WORKDIR /opt/src/app
COPY ./app/Gemfile* ./
RUN bundle install
CMD ["sh", "entrypoint.sh"]
FROM ruby:2.6-stretch

WORKDIR "/home"

ADD Gemfile* ./
RUN bundle install

ADD . .

CMD ["./hiera_prune.rb"]

FROM		ruby:latest
MAINTAINER 	iam@kibeomk.im
COPY Gemfile* /usr/src/app/
WORKDIR	/usr/src/app
RUN	bundle install
COPY . /usr/src/app
EXPOSE	4567
CMD	bundle exec ruby app.rb -o 0.0.0.0

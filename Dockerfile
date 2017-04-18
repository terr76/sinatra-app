#1. install or update ubuntu
FROM		ubuntu:16.04
MAINTAINER 	iam@kibeomk.im
RUN		apt-get -y update

#2. install ruby
RUN	apt-get -y install ruby
RUN	gem install bundler

#3. copy source
COPY	. /usr/src/app

#4. install Gem package
WORKDIR	/usr/src/app
RUN	bundle install

#5. excute Sinatra server
EXPOSE	4567
CMD	bundle exec ruby app.rb -o 0.0.0.0

FROM node:4.2.4

#install imagemagick
RUN apt-get update
RUN apt-get install -y \
    wget \
    imagemagick

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN echo 'npm install;npm start' > /start.sh
RUN chmod +x /start.sh

CMD ["/bin/sh","/start.sh"]

EXPOSE 3000

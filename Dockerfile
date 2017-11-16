FROM localhost:5000/angular-img
MAINTAINER testuser@test.com

RUN apt-get update
RUN apt-get -y install zip unzip

WORKDIR /home/app
COPY app.zip /
RUN unzip app.zip
RUN npm install

EXPOSE 4200

CMD "ng" "serve"
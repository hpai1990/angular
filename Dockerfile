FROM localhost:5000/angular-img
MAINTAINER testuser@test.com

RUN apt-get update
RUN apt-get -y install zip unzip

COPY app.zip /home/app/
WORKDIR /home/app
RUN unzip app.zip
RUN npm install

EXPOSE 4200

CMD "ng" "serve"
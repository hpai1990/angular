FROM localhost:5000/angular-img
MAINTAINER testuser@test.com

COPY .* /home/app
EXPOSE 4200
CMD ['npm','start']
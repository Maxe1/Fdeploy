FROM node:12.2.0
ENV NPM_CONFIG_LOGLEVEL warn
RUN mkdir -p /usr/src/app

EXPOSE 4200

WORKDIR /usr/src/app

ADD package.json /usr/src/app/

RUN npm install --production
RUN npm install -g @angular/cli@7.3.9
#RUN npm run build --production

ADD . /usr/src/app/

ENTRYPOINT ["ng", "serve","--host","0.0.0.0"]

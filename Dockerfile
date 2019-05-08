FROM node:10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install --cache /tmp/empty-cache
RUN npm install
RUN npm install -g @angular/cli
COPY . /usr/src/app
EXPOSE 4200
CMD ["ng","serve","--host","0.0.0.0","--port","4200"]
FROM node:7.6.0

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/wether/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/wether
RUN npm install

USER root
COPY . $HOME/wether
RUN chown -R app:app $HOME/*
USER app

# change to npm start?
CMD ["node", "index.js"]

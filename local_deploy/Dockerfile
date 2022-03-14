FROM node:16

WORKDIR /code

COPY package.json /code/
RUN npm i

EXPOSE 4000
CMD [ "npm", "run", "dev"]


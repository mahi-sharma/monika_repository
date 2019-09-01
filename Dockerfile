FROM node:alpine:latest

WORKDIR /usr/app

#install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

EXPOSE 8081

#Default command 
CMD ["npm","start"]

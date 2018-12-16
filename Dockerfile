#1 Specify a base image
FROM node:alpine

WORKDIR /app

#2 Install some programs, dependencies
COPY ./package.json ./
RUN npm install
COPY . .

#3 Default command
CMD ["npm", "start"]
FROM node:8
## app directory
WORKDIR /usr/nodejs/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --only-production
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source code inside this image
COPY . /usr/nodejs/app

## Expose the port you want the app to bind to
EXPOSE 8081

## explicitly set any environment variables that your Node.js application will be expecting to remain constant throughout the lifecycle
ENV  NODE_ENV production

## Define the command to run your app using CMD which defines your runtime
CMD [ "node.js", "index.js" ]
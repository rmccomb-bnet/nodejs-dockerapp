FROM node:8
## app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source code inside this image
COPY . .

## Expose the port you want the app to bind to
EXPOSE 8080

## Define the command to run your app using CMD which defines your runtime
CMD [ "npm", "start" ]
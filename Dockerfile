# Node Alpine is the first base image
FROM node:16-alpine

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
CMD [ "npm", "run", "start" ]

# Should have a second base image for an nginx server
# but using docker 17.03 and multistep builds not available until docker 17.06
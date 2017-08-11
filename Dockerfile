FROM docker.io/node:6.11.2

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json .
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json .

RUN npm install supervisor express express-generator pm2 forever co kue clone -g
RUN cd /usr/src/app

# Bundle app source
#COPY . .

#CMD [ "npm", "start" ]
#CMD [ "pm2", "start", "all" ]
#CMD [ "pm2", "restart", "all" ]
#CMD [ "pm2", "stop", "all" ]
#ENTRYPOINT [ "/bin/sh", "pm2Start.sh" ]

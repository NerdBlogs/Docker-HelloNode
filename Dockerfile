# use the ubuntu 14.04 as base
FROM    ubuntu:14.04

# update source and install node
RUN sudo apt-get update -y
RUN sudo apt-get install nodejs npm -y

# App will be placed under /node/app folder
ADD ./src /node/app

# Run npm to install node packages
RUN cd /node/app; npm install

# Set up the server, expose port and start it
EXPOSE  8080
CMD ["nodejs", "/node/app/server.js"]
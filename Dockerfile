FROM alpine

# Update
RUN apk add --update nodejs

# Install app dependencies
COPY package.json /src/package.json
RUN cd /src; npm install

# Bundle app source
COPY index.js /src

EXPOSE 3030
CMD ["node", "/src/index.js"]
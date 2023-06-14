FROM node:19
USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app

# Copy distributable code
COPY --chown=node . .

RUN yarn install

#Expose the right port
EXPOSE 8000

# Run our app
CMD ["yarn", "start"]


FROM node:18.3.0
ADD package.json /package.json
RUN npm install
WORKDIR /app
CMD ["npm", "run", "serve"]

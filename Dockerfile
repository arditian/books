FROM node:14.17.1
WORKDIR /usr/src
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm ci --only=production
EXPOSE 8080
CMD ["npm", "start"]

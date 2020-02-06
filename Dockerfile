FROM node:13.7.0-stretch-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --no-optional && npm cache clean --force

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
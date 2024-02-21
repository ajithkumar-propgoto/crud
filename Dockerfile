FROM node:18
# Install dependencies 

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENV name projects

CMD ["npm", "start"]
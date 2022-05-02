FROM node:18

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . .

ENV FASTIFY_ADDRESS 0.0.0.0

CMD ["npm", "start"]

FROM node:16-alpine
EXPOSE 3000
WORKDIR /app
CMD ["yarn", "start"]

COPY package.json .
COPY yarn.lock .
COPY test.yaml .

RUN yarn

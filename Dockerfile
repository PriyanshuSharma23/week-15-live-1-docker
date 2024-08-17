FROM node:16-alpine

WORKDIR /app

COPY . .

ENV DATABASE_URL = ${DATABASE_URL}

RUN npm install
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/index.js" ]
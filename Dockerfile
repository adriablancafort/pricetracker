FROM node:alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

ARG VITE_MONGO_USER=${VITE_MONGO_USER}
ARG VITE_MONGO_PASSWORD=${VITE_MONGO_PASSWORD}
ARG VITE_MONGO_IP=${VITE_MONGO_IP}
ARG VITE_MONGO_PORT=${VITE_MONGO_PORT}
ARG VITE_MONGO_USER=${VITE_MONGO_USER}

RUN npm run build

FROM node:alpine

COPY --from=build /app/build ./
COPY --from=build /app/package*.json ./

RUN npm ci --production

ENV NODE_ENV=production PORT=3000

EXPOSE 3000

CMD ["node", "index.js"]
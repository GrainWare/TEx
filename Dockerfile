# --- Builder Stage ---
FROM node:slim AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

RUN npm run build

RUN npm prune --production

# --- Final Stage ---
FROM node:slim
WORKDIR /app

COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY package.json .

EXPOSE 3000
ENV NODE_ENV=production

CMD [ "node", "build/index.js" ]
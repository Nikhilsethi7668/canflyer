FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Accept API Key as build argument
ARG GEMINI_API_KEY
# Set it as environment variable so Vite can pick it up
ENV GEMINI_API_KEY=$GEMINI_API_KEY

RUN npm run build
RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "dist", "-l", "3000"]

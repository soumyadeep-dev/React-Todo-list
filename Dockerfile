# Use an official Node runtime as the base image
FROM node:alpine

WORKDIR /app

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining app files
COPY . .

RUN npm run build

EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]


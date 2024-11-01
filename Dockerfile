# Use the official Node.js LTS image as the base image
FROM node:lts

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

RUN echo "Build process completed."

# Expose the port the server runs on
EXPOSE 8080

RUN echo "Starting node app"

# Start the server
CMD ["node", "app.js"]

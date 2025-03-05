# Use an official Node.js runtime as a base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Set working directory to the src folder where app.js exists
WORKDIR /app/src

# Expose the application's running port
EXPOSE 8000

# Run the application
WORKDIR /app
CMD ["node", "src/app.js"]

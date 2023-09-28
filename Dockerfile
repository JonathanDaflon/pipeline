# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your app runs on (if needed)
# EXPOSE 3000

# Define the command to run your tests (replace with your actual test command)
CMD ["npm", "test"]

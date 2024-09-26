# Use an official Node.js runtime as the base image
FROM node:18-alpine
RUN cat /etc/resolv.conf
# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json if available
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]

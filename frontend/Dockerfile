# Use the official Node.js image with Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY frontend/package*.json ./frontend/

# Install frontend dependencies
RUN cd frontend && npm install

# Copy the rest of the application code
COPY frontend/ ./frontend

# Set environment variables (optional: these can be set in a .env file)
ENV PORT=3000

# Expose the application port
EXPOSE 3000

# Run the React app
CMD ["npm", "start", "--prefix", "frontend"]

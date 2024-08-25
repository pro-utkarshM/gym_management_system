# Use the official Node.js image with Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY backend/package*.json ./backend/

# Install backend dependencies
RUN cd backend && npm install

# Copy the rest of the application code
COPY backend/ ./backend

# Set environment variables (optional: these can be set in a .env file)
ENV PORT=5000

# Expose the application port
EXPOSE 5000

# Run the Express app
CMD ["npm", "start", "--prefix", "backend"]

# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy and install backend dependencies
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copy and install frontend dependencies
COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install

# Copy the entire backend and frontend source code
COPY backend/ ./backend
COPY frontend/ ./frontend

# Expose ports (adjust according to your app)
EXPOSE 3000 3001

# Start the backend or frontend app
CMD ["npm", "start", "--prefix", "backend"]  # or "frontend" depending on which one to run

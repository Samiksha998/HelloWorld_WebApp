# Dockerfile - Multi-Cloud Web App
# Base: Node.js 18 Alpine (lightweight, secure, ~150MB)
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application code
COPY app.js .

# Expose port (Cloud Run uses 8080 by default)
EXPOSE 8080

# Start application
CMD ["node", "app.js"]

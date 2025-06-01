# Use an official Node.js runtime as a parent image
FROM node:18-mini

# Set the working directory inside the container
WORKDIR /app
step-2
# Copy package.json and package-lock.json before installing dependencies
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application source code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "server.js"]

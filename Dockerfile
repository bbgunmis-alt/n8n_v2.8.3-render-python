FROM node:18

# Install python3 and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy only package.json
COPY package.json ./

# Run npm install
RUN npm install

# Copy all source files
COPY . .

# Expose port 5678
EXPOSE 5678

# Start n8n with "n8n start"
CMD ["npx", "n8n", "start"]

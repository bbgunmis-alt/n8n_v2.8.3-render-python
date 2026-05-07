FROM node:18

# Install Python3 and pip (Render compatibility)
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy all source files
COPY . .

# Expose port 5678
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
FROM node:18

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# ติดตั้ง n8n โดยตรง
RUN npm install n8n@2.8.3

EXPOSE 5678
CMD ["n8n", "start"]
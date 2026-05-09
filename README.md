# 🚀 n8n v2.8.3 Render Blueprint

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/bbgunmis-alt/n8n_v2.8.3-render-python)

This repository provides a **Render Blueprint (`render.yaml`)** to deploy the official **n8n v2.8.3** Docker image (`n8nio/n8n:2.8.3`) to Render.com with a persistent disk. 

We no longer build a custom Docker image. This blueprint directly deploys the official image, ensuring maximum compatibility and faster deployments.

## 🚀 One-Click Installation
1. Click the **Deploy to Render** button above.
2. Select **Starter** plan (required for Disk persistence).
3. Wait for the deploy to finish and copy your `WEBHOOK_URL` (the URL Render gives you).
4. Update the `WEBHOOK_URL` environment variable in the Render Dashboard.
5. **Done!**

## 📂 Repository Contents
- `render.yaml`: The Render Blueprint configuration that defines the web service, Docker image, environment variables, and persistent disk.
- `MANUAL_DEPLOY.md`: Step-by-step instructions for manual deployment if the "Deploy to Render" button is not used.

## 📝 Configuration
The `render.yaml` automatically sets up essential environment variables such as:
- `N8N_PORT=5678`
- `DB_TYPE=sqlite`
- Disk persistence at `/home/node/.n8n` to save your workflows and credentials.

---
Created by [api29200](https://github.com/api29200) | Maintained for Render deployment.

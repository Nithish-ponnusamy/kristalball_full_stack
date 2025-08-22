# 🚀 Render Backend Deployment Instructions

## Current Status: Ready for Deployment ✅

## 📋 Render Deployment Steps

### 1. Access Render
- Go to: **[render.com](https://render.com)**
- Click **"Get Started for Free"**
- Sign up with GitHub

### 2. Create Web Service
- Click **"New +"** → **"Web Service"**
- Choose **"Build and deploy from a Git repository"**
- Click **"Connect"** next to GitHub
- Select repository: **`NiranjanG2004/kristalball`**

### 3. Configure Service
```
Name: kristalball-backend
Region: Oregon (US West) or closest to you
Branch: main
Root Directory: backend
Runtime: Node
Build Command: npm install
Start Command: npm start
Instance Type: Free
```

### 4. Environment Variables (CRITICAL!)
Add these environment variables:
```
NODE_ENV=production
JWT_SECRET=kristalball-super-secret-jwt-key-2024-production
MONGODB_URI=mongodb+srv://[YOUR_USERNAME]:[YOUR_PASSWORD]@cluster0.mongodb.net/military_assets
FRONTEND_URL=https://your-netlify-site.netlify.app
PORT=5000
```

### 5. MongoDB Setup (Required!)
**Before deploying, you MUST set up MongoDB Atlas:**

1. Go to **[mongodb.com/atlas](https://www.mongodb.com/atlas)**
2. Create free account → Create cluster
3. Create database user (username/password)
4. Go to Network Access → Add IP (use `0.0.0.0/0` for all IPs)
5. Get connection string from "Connect" → "Connect your application"
6. Replace `<password>` and `<username>` in the connection string
7. Use this as your `MONGODB_URI`

### 6. Deploy
- Click **"Create Web Service"**
- Wait for deployment (5-10 minutes)
- Check logs for any errors

## 🎯 Expected Result

Your backend will be available at:
**`https://kristalball-backend.onrender.com`**

Test endpoints:
- Health: `https://kristalball-backend.onrender.com/health`
- API Health: `https://kristalball-backend.onrender.com/api/health`

## ⚠️ Important Notes

1. **Free Tier**: Service goes to sleep after 15 minutes of inactivity
2. **Cold Start**: First request may take 30-60 seconds
3. **MongoDB Required**: App won't work without database connection

## 🔧 Troubleshooting

### Service Won't Start:
- Check environment variables are set correctly
- Verify MongoDB connection string
- Check deploy logs for specific errors

### Database Connection Fails:
- Verify MongoDB Atlas IP whitelist includes `0.0.0.0/0`
- Check username/password in connection string
- Ensure database user has read/write permissions

### CORS Errors:
- Update `FRONTEND_URL` with actual Netlify URL after frontend is deployed

---

**Deploy this FIRST, then deploy frontend!** 🚀

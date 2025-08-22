# Deployment Guide for Kristalball

This guide will help you deploy the Kristalball application with the frontend on Netlify and backend on Render.

## Prerequisites

1. GitHub account with your code pushed to a repository
2. Netlify account (free)
3. Render account (free)
4. MongoDB Atlas account (free) for production database

## Backend Deployment on Render

### Step 1: Create MongoDB Atlas Database (Required)

1. Go to [MongoDB Atlas](https://www.mongodb.com/atlas)
2. Create a free account and cluster
3. Create a database user
4. Get your connection string (should look like: `mongodb+srv://username:password@cluster.mongodb.net/military_assets`)

### Step 2: Deploy to Render

1. Go to [Render](https://render.com/) and sign up/log in
2. Click "New +" and select "Web Service"
3. Connect your GitHub repository
4. Configure the service:
   - **Name**: `kristalball-backend`
   - **Region**: Choose closest to your users
   - **Branch**: `main`
   - **Root Directory**: `backend`
   - **Runtime**: `Node`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`

5. Add Environment Variables:
   ```
   NODE_ENV=production
   JWT_SECRET=your-super-secret-jwt-key-change-this-in-production-12345
   MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/military_assets
   FRONTEND_URL=https://your-frontend-app.netlify.app
   PORT=5000
   ```

6. Click "Create Web Service"

**Your backend will be available at**: `https://kristalball-backend.onrender.com`

## Frontend Deployment on Netlify

### Step 1: Deploy to Netlify

1. Go to [Netlify](https://netlify.com/) and sign up/log in
2. Click "Add new site" > "Import an existing project"
3. Connect to GitHub and select your repository
4. Configure build settings:
   - **Base directory**: `frontend`
   - **Build command**: `npm run build`
   - **Publish directory**: `frontend/build`

5. Add Environment Variables in Netlify:
   ```
   REACT_APP_API_URL=https://kristalball-backend.onrender.com
   ```

6. Click "Deploy site"

**Your frontend will be available at**: `https://your-app-name.netlify.app`

### Step 2: Update Backend CORS

After getting your Netlify URL, update the backend environment variable:
- In Render dashboard, go to your backend service
- Update `FRONTEND_URL` to your actual Netlify URL
- The service will automatically redeploy

## Post-Deployment Steps

1. **Test the application**: Visit your Netlify URL and ensure everything works
2. **Set up custom domain** (optional): Configure custom domains in both Netlify and Render
3. **Monitor logs**: Check Render logs for any backend issues

## Troubleshooting

### Common Issues:

1. **CORS errors**: Ensure the frontend URL is correctly set in backend environment variables
2. **Database connection**: Verify MongoDB Atlas connection string and IP whitelist
3. **Build failures**: Check the build logs in both platforms for specific errors

### Environment Variables Checklist:

**Backend (Render):**
- ✅ NODE_ENV=production
- ✅ JWT_SECRET=(secure random string)
- ✅ MONGODB_URI=(MongoDB Atlas connection string)
- ✅ FRONTEND_URL=(your Netlify URL)

**Frontend (Netlify):**
- ✅ REACT_APP_API_URL=(your Render backend URL)

## Demo URLs

Once deployed, you'll have:
- **Frontend**: `https://your-app-name.netlify.app`
- **Backend**: `https://kristalball-backend.onrender.com`

## Features Available in Demo

- User authentication (login/register)
- Asset management dashboard
- Purchase tracking
- Transfer management
- Assignment tracking
- Responsive design with animations

## Free Tier Limitations

- **Render**: May sleep after 15 minutes of inactivity
- **Netlify**: 100GB bandwidth/month
- **MongoDB Atlas**: 512MB storage

For production use, consider upgrading to paid plans for better performance and reliability.

# 🚀 Netlify Deployment Instructions

## Current Status: Ready for Deployment ✅

Your code is now pushed to GitHub with all deployment configurations!

## 📋 Netlify Deployment Steps

### 1. Access Netlify
- Go to: **[netlify.com](https://netlify.com)**
- Click **"Sign up"** or **"Log in"**
- Choose **"Deploy with GitHub"**

### 2. Create New Site
- Click **"Add new site"** → **"Import an existing project"**
- Choose **"Deploy with GitHub"**
- Select your repository: **`NiranjanG2004/kristalball`**

### 3. Configure Build Settings
```
Site name: kristalball-demo (or your preferred name)
Branch to deploy: main
Base directory: frontend
Build command: npm run build
Publish directory: frontend/build
```

### 4. Environment Variables
Before deploying, add these environment variables:
- Go to **Site settings** → **Environment variables**
- Add: `REACT_APP_API_URL` = `https://kristalball-backend.onrender.com`

### 5. Deploy
- Click **"Deploy site"**
- Wait for build to complete (2-5 minutes)

## 🎯 Expected Result

Your site will be available at:
**`https://[your-site-name].netlify.app`**

Example: `https://kristalball-demo.netlify.app`

## 🔧 If You Get Errors

### Build Fails:
- Check build logs in Netlify dashboard
- Ensure `frontend` folder has `package.json`
- Verify build command is `npm run build`

### Site Shows 404:
- Check that publish directory is `frontend/build`
- Ensure build completed successfully
- Check if `netlify.toml` file is in the frontend folder

### API Calls Fail:
- Verify `REACT_APP_API_URL` environment variable
- Make sure backend is deployed first on Render

## 📞 Need Help?

If you encounter issues:
1. Check the build logs in Netlify dashboard
2. Verify your GitHub repository has the latest code
3. Make sure the `frontend/build` folder exists after build

---

**Your repository is ready!** 🎉 Follow these steps and you'll have your demo link in minutes.

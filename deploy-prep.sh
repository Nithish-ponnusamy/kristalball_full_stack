#!/bin/bash

# Build script for deployment preparation

echo "🚀 Preparing Kristalball for deployment..."

# Frontend build
echo "📦 Building frontend..."
cd frontend
npm install
npm run build

# Backend preparation
echo "🔧 Preparing backend..."
cd ../backend
npm install

echo "✅ Build preparation complete!"
echo ""
echo "📝 Next steps:"
echo "1. Deploy backend to Render using the render.yaml configuration"
echo "2. Deploy frontend to Netlify using the netlify.toml configuration"
echo "3. Update environment variables as needed"

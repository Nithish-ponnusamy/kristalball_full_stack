# MongoDB Atlas Setup Instructions

## 🚀 Complete Backend Setup with MongoDB Atlas

### 1. Create MongoDB Atlas Account
1. Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
2. Sign up for a free account
3. Create a new cluster (free tier available)

### 2. Configure Database Access
1. In Atlas dashboard, go to "Database Access"
2. Click "Add New Database User"
3. Create a user with read/write access
4. Remember the username and password

### 3. Configure Network Access
1. Go to "Network Access" in Atlas dashboard
2. Click "Add IP Address"
3. Add your current IP or use `0.0.0.0/0` for development (less secure)

### 4. Get Connection String
1. Click "Connect" on your cluster
2. Choose "Connect your application"
3. Copy the connection string
4. Replace `<password>` with your database user password

### 5. Update Backend Configuration

#### Update `.env` file:
```env
MONGODB_URI=mongodb+srv://your-username:your-password@cluster0.mongodb.net/military_assets?retryWrites=true&w=majority
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
PORT=5000
NODE_ENV=development
FRONTEND_URL=http://localhost:3000
```

### 6. Install Dependencies & Start Backend
```bash
cd backend
npm install
node seedData.js  # Seeds the database with initial data
npm start         # Starts the server
```

### 7. Start Frontend
```bash
cd frontend
npm start
```

## 🎯 Demo Accounts Created by Seeding Script

After running `node seedData.js`, these accounts will be available:

| Username   | Password     | Role              | Base                    |
|------------|--------------|-------------------|-------------------------|
| admin      | admin123     | admin             | Fort Knox, KY           |
| commander  | commander123 | commander         | Fort Bragg, NC          |
| logistics  | logistics123 | logistics_officer | Camp Pendleton, CA      |
| demo       | demo123      | inventory_manager | Naval Station Norfolk   |

## 🔧 Features Implemented

### Backend (Node.js + MongoDB Atlas):
- ✅ User registration and authentication
- ✅ Password hashing with bcryptjs
- ✅ JWT token-based authentication
- ✅ MongoDB schemas for Users and Bases
- ✅ Input validation and error handling
- ✅ CORS configuration for frontend
- ✅ Database seeding script

### Frontend (React + Modern UI):
- ✅ Beautiful login/signup forms with animations
- ✅ Real-time form validation
- ✅ Toast notifications for feedback
- ✅ Responsive design with glass morphism
- ✅ Framer Motion animations
- ✅ GSAP timeline effects
- ✅ Professional loading states

## 🛠️ API Endpoints

### Authentication:
- `POST /api/auth/signup` - Create new account
- `POST /api/auth/login` - User login
- `GET /api/auth/profile` - Get user profile
- `PUT /api/auth/profile` - Update user profile
- `POST /api/auth/logout` - User logout
- `GET /api/auth/bases` - Get available military bases

## 🔒 Security Features

- Password hashing with bcryptjs (salt rounds: 12)
- JWT tokens with 24-hour expiration
- Input validation and sanitization
- Mongoose schema validation
- Account status checking
- Unique email/username enforcement

## 📝 Next Steps

1. Replace the MongoDB URI in `.env` with your actual Atlas connection string
2. Run the seeding script to populate initial data
3. Start both backend and frontend servers
4. Test authentication with the demo accounts
5. Create new accounts through the signup form

## 🚨 Important Notes

- Keep your MongoDB credentials secure
- Use strong JWT secrets in production
- Consider implementing password reset functionality
- Add rate limiting for production use
- Implement proper logging and monitoring

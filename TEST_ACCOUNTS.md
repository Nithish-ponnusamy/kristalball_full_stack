# Test Accounts for Military Asset Management System

## Available Demo Accounts

### 1. Administrator Account
- **Username:** `admin`
- **Password:** `admin123`
- **Role:** admin
- **Base:** Central Command

### 2. Commander Account
- **Username:** `commander`
- **Password:** `commander123`
- **Role:** commander
- **Base:** Forward Base Alpha

### 3. Logistics Officer Account
- **Username:** `logistics`
- **Password:** `logistics123`
- **Role:** logistics_officer
- **Base:** Supply Depot Beta

### 4. General Demo Account
- **Username:** `demo`
- **Password:** `demo123`
- **Role:** user
- **Base:** Training Base Gamma

## How to Test

1. **Navigate to:** http://localhost:3000
2. **Use any of the accounts above** to test login
3. **After successful login**, you should be automatically redirected to the dashboard
4. **The dashboard** will display role-based content and animations

## What's Working

✅ User authentication with MongoDB
✅ JWT token generation and validation
✅ Password hashing with bcryptjs
✅ Role-based access control
✅ Modern UI with Framer Motion and GSAP animations
✅ Glass morphism design
✅ Toast notifications
✅ Form validation
✅ Responsive design
✅ Post-login navigation to dashboard

## Backend API Endpoints

- **POST** `/api/auth/signup` - User registration
- **POST** `/api/auth/login` - User authentication
- **GET** `/health` - Server health check

## Servers Running

- **Frontend:** http://localhost:3000 (React)
- **Backend:** http://localhost:5000 (Node.js/Express)
- **Database:** MongoDB (connected via environment variables)

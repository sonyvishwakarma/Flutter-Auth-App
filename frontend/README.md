# Full-Stack Flutter Authentication App

A complete, production-ready authentication system featuring a **Flutter** mobile frontend, a **Node.js & Express** REST API backend, and a **MongoDB** database.

---

## 🛠 Tech Stack & Architecture

- **Frontend:** Flutter (Dart), Local State Management (`StatefulWidget` + Service Layer), HTTP package for REST API communication.
- **Backend:** Node.js, Express.js.
- **Database:** MongoDB (Managed via Mongoose ODM).
- **Security & Auth:** BcryptJS (Password Hashing), JSON Web Tokens (JWT).

---

## 📂 Project Directory Structure

flutter_auth_app/
├── backend/
│ ├── models/
│ │ └── User.js
│ ├── server.js
│ └── package.json
│
└── frontend/
└── lib/
├── models/
│ └── user.dart
├── services/
│ └── auth_service.dart
├── screens/
│ ├── login_screen.dart
│ ├── signup_screen.dart
│ └── home_screen.dart
└── main.dart

🚀 Getting Started & Installation

## Clone or Set Up the Workspace

Create a root folder named flutter_auth_app containing two subfolders: backend and frontend.

## Backend Setup (Node.js & Express)

3. Navigate to the backend folder:
   cd backend
4. Initialize and Install dependencies:
   npm init -y
   npm install express mongoose bcryptjs jsonwebtoken cors dotenv
5. Start the server:
   node server.js

## Frontend Setup(Flutter)

1. Navigate to frontend folder
   cd frontend
2. Fetch dependencies:
   flutter pub get
3. Update your AuthService base URL (frontend/lib/services/auth_service.dart) with your computer's local IPv4 address:
   final String baseUrl = 'http://YOUR_PC_IPV4_ADDRESS:5001/api';

## Running App on Physical Phone(Wireless Debugging)

To run and test the app live on your mobile device without a USB cable:

1. Enable Developer Options and Wireless Debugging on your phone.
2. Connect your device via terminal:
   adb connect <IP_address>:<PORT>
3. Run the app
   flutter run

🔌 API Endpoints
Method Endpoint Description
GET / Health check (returns server status)
POST /api/signup Registers a new user with hashed password
POST /api/login Authenticates user credentials and returns a JWT token


# Full-Stack Flutter Authentication App

A complete, production-ready authentication system featuring a **Flutter** mobile frontend, a **Node.js & Express** REST API backend, and a **MongoDB** database.

---

## 🛠 Tech Stack & Architecture

* **Frontend:** Flutter (Dart), Local State Management (`StatefulWidget` + Service Layer), HTTP package for REST API communication.
* **Backend:** Node.js, Express.js.
* **Database:** MongoDB (Managed via Mongoose ODM).
* **Security & Auth:** BcryptJS (Password Hashing), JSON Web Tokens (JWT).

---

## 📂 Project Directory Structure

```text
flutter_auth_app/
├── backend/
│   ├── models/
│   │   └── User.js
│   ├── server.js
│   └── package.json
│
└── frontend/
    └── lib/
        ├── models/
        │   └── user.dart
        ├── services/
        │   └── auth_service.dart
        ├── screens/
        │   ├── login_screen.dart
        │   ├── signup_screen.dart
        │   └── home_screen.dart
        └── main.dart

```

---

## 🚀 Getting Started & Installation

### 1. Clone or Set Up the Workspace

Create a root folder named `flutter_auth_app` containing two subfolders: `backend` and `frontend`.

### 2. Backend Setup (Node.js & Express)

1. Navigate to the `backend` folder:
```bash
cd backend

```


2. Initialize and install dependencies:
```bash
npm init -y
npm install express mongoose bcryptjs jsonwebtoken cors dotenv

```


3. Start the server:
```bash
node server.js

```


*(The server runs on port `5001` and connects to local MongoDB).*

### 3. Frontend Setup (Flutter)

1. Navigate to the `frontend` folder:
```bash
cd frontend

```


2. Fetch dependencies:
```bash
flutter pub get

```


3. Update your `AuthService` base URL (`frontend/lib/services/auth_service.dart`) with your computer's local IPv4 address:
```dart
final String baseUrl = 'http://YOUR_PC_IPV4_ADDRESS:5001/api';

```



---

## 📱 Running the App on a Physical Phone (Wireless Debugging)

To run and test the app live on your mobile device without a USB cable:

1. Enable **Developer Options** and **Wireless Debugging** on your phone.
2. Connect your device via terminal:
```bash
adb connect <IP_address>:<PORT>

```


3. Run the app:
```bash
flutter run

```



---

## 🔌 API Endpoints

| Method | Endpoint | Description |
| --- | --- | --- |
| `GET` | `/` | Health check (returns server status) |
| `POST` | `/api/signup` | Registers a new user with hashed password |
| `POST` | `/api/login` | Authenticates user credentials and returns a JWT token |

```

```

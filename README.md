# Campus Guardian

A full-stack web application for campus complaint management system.

## Features
- 📝 User complaint submission and tracking
- 👨💼 Admin dashboard for complaint management
- 🏢 Department-wise complaint categorization
- 🔐 User authentication and authorization
- 📊 Real-time complaint status updates

## Tech Stack
- **Backend:** Python Flask, Firebase Firestore
- **Frontend:** HTML, CSS, JavaScript
- **Database:** Firebase Firestore
- **Authentication:** Firebase Auth

## Prerequisites
- Python 3.7 or higher
- pip (Python package manager)
- Firebase project setup

## Quick Start

### Easy Run (Windows)
```bash
# Complete setup and run
complete-fix.bat

# Frontend only
start-frontend.bat
```

### Manual Setup

#### 1. Backend (Python Flask)
```bash
cd flask-backend
python app.py
```
Backend runs on: http://localhost:8080

#### 2. Frontend
```bash
cd frontend
python -m http.server 8000
```
Frontend runs on: http://localhost:8000

### 4. Access Application
- **User Portal:** http://localhost:8000
- **Admin Portal:** http://localhost:8000/admin
- **API Docs:** See `docs/API.md`

## Project Structure
```
├── flask-backend/     # Python Flask API
│   ├── app.py        # Main Flask application
│   ├── models.py     # Data models
│   ├── services.py   # Business logic
│   └── firebase_config.py # Firebase setup
├── frontend/         # Web application
│   ├── admin/        # Admin dashboard
│   ├── user/         # User portal
│   ├── css/          # Stylesheets
│   └── js/           # JavaScript files
├── docs/            # Documentation
└── README.md        # This file
```

## Configuration

### Firebase Setup
1. Create Firebase project
2. Enable Firestore and Authentication
3. Download admin SDK JSON
4. Place in `backend/src/main/resources/`
5. Update `application.properties`

## Development

### Backend Development
```bash
cd flask-backend
python app.py
```

### Frontend Development
```bash
cd frontend
python -m http.server 8000
```

## API Endpoints
- `GET /api/complaints` - List complaints
- `POST /api/complaints` - Create complaint
- `GET /api/departments` - List departments

See `docs/API.md` for complete API documentation.

## Contributing
1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## License
MIT License
from flask import Flask, jsonify, request
from flask_cors import CORS
from datetime import datetime
import os

app = Flask(__name__)
CORS(app)

# Mock data
complaints = [
    {
        'id': 'comp-001',
        'title': 'Library AC not working',
        'description': 'Air conditioning issues in study hall',
        'department': 'Infrastructure',
        'status': 'pending',
        'created_at': '2024-01-15T10:30:00Z'
    }
]

departments = [
    {'id': '1', 'name': 'Academic Affairs'},
    {'id': '2', 'name': 'Infrastructure'},
    {'id': '3', 'name': 'IT Services'},
    {'id': '4', 'name': 'Security'}
]

@app.route('/')
def home():
    return jsonify({'message': 'Campus Guardian API', 'status': 'running'})

@app.route('/api/auth/login', methods=['POST'])
def login():
    data = request.get_json()
    email = data.get('email')
    password = data.get('password')
    
    if email == 'admin@campus.edu' and password == 'admin123':
        return jsonify({
            'success': True,
            'user': {'email': email, 'name': 'Admin', 'role': 'admin'},
            'token': 'admin-token'
        })
    elif email == 'student@campus.edu' and password == 'student123':
        return jsonify({
            'success': True,
            'user': {'email': email, 'name': 'Student', 'role': 'student'},
            'token': 'student-token'
        })
    
    return jsonify({'success': False, 'error': 'Invalid credentials'}), 401

@app.route('/api/complaints', methods=['GET', 'POST'])
def handle_complaints():
    if request.method == 'GET':
        return jsonify({'success': True, 'complaints': complaints})
    
    if request.method == 'POST':
        data = request.get_json()
        new_complaint = {
            'id': f'comp-{len(complaints) + 1:03d}',
            'title': data['title'],
            'description': data['description'],
            'department': data['department'],
            'status': 'pending',
            'created_at': datetime.now().isoformat()
        }
        complaints.append(new_complaint)
        return jsonify({'success': True, 'complaint': new_complaint}), 201

@app.route('/api/complaints/departments')
def get_departments():
    return jsonify({'success': True, 'departments': departments})

if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    app.run(host='0.0.0.0', port=port, debug=True)
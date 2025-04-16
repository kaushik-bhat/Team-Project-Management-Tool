// Users
db.users.insertMany([
  {
    "username": "admin",
    "password": "admin123",
    "firstName": "John",
    "lastName": "Doe",
    "gender": "Male",
    "role": "admin",
    "email": "john.doe@example.com",
    "phone": "1234567890",
    "department": "Administration"
  },
  {
    "username": "leader1",
    "password": "leader123",
    "firstName": "Jane",
    "lastName": "Smith",
    "gender": "Female",
    "role": "teamleader",
    "email": "jane.smith@example.com",
    "phone": "2345678901",
    "department": "Development"
  },
  {
    "username": "member1",
    "password": "member123",
    "firstName": "Bob",
    "lastName": "Johnson",
    "gender": "Male",
    "role": "teammember",
    "email": "bob.johnson@example.com",
    "phone": "3456789012",
    "department": "Development"
  },
  {
    "username": "member2",
    "password": "member123",
    "firstName": "Alice",
    "lastName": "Williams",
    "gender": "Female",
    "role": "teammember",
    "email": "alice.williams@example.com",
    "phone": "4567890123",
    "department": "Development"
  }
]);

// Projects
db.projects.insertMany([
  {
    "name": "Project Alpha",
    "description": "First major project",
    "deadline": new Date("2024-06-30"),
    "deliverables": ["Documentation", "Source Code", "Test Reports"],
    "teamLeader": "leader1",
    "teamMembers": ["member1", "member2"],
    "status": "In Progress",
    "createdAt": new Date()
  }
]);

// Notifications
db.notifications.insertMany([
  {
    "title": "Welcome",
    "message": "Welcome to the Team Project Management System",
    "recipient": "admin",
    "read": false,
    "createdAt": new Date()
  }
]); 
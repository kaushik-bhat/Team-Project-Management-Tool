# Team Project Management Tool

This is a web application designed to help teams manage projects, tasks, and notifications effectively. It features role-based access control for administrators, team leaders, and team members.

## Technologies Used

*   **Frontend:** React, Material-UI (MUI)
*   **Backend:** Java, Spring Boot, Spring Data MongoDB
*   **Database:** MongoDB
*   **Build Tools:** Maven (Backend), npm/yarn (Frontend)

## Key Features

*   **Role-Based Access:** Distinct dashboards and permissions for Admins, Team Leaders, and Team Members.
    *   **Admin:** Manages users (implicitly), creates/deletes projects, sends project notifications.
    *   **Team Leader:** Manages projects they lead (updates status, creates tasks), sends project notifications.
    *   **Team Member:** Views assigned projects/tasks, updates status of assigned tasks.
*   **Project Management:** Create projects with descriptions, deadlines, team leaders, and members.
*   **Task Management:** Team leaders can create tasks within projects and assign them to members.
*   **Status Tracking:** Projects and tasks have statuses (Not Started, In Progress, Under Review, Completed) that can be updated based on roles.
*   **Notifications:** Admins and Team Leaders can send notifications specific to a project, visible to project members.

## Project Structure

```
OOAD/
├── backend/      # Java Spring Boot application
│   ├── src/
│   ├── pom.xml
│   └── ...
├── frontend/     # React application
│   ├── public/
│   ├── src/
│   ├── package.json
│   └── ...
├── .gitignore    # Git ignore rules for the whole project
└── README.md     # This file
```

## Setup and Running

**Prerequisites:**

*   Java JDK (Version 17 or later recommended)
*   Maven
*   Node.js and npm (or yarn)
*   MongoDB (running locally or accessible via connection string)

**1. Backend Setup:**

*   **Database:** Ensure MongoDB is running. The application expects it on the default port `27017` unless configured otherwise.
    *   Update the MongoDB connection string in `backend/src/main/resources/application.properties` if needed:
      ```properties
      spring.data.mongodb.uri=mongodb://localhost:27017/teamprojectdb 
      ```
    *   The application uses a database named `teamprojectdb`. You might need sample data (check `backend/src/main/resources/data.sql` for insertion commands using `mongo` shell).
*   **Build & Run:**
    ```bash
    # Navigate to the backend directory
    cd backend

    # Build the application using Maven
    mvn clean package

    # Run the Spring Boot application
    mvn spring-boot:run 
    # Or run the generated JAR: java -jar target/backend-0.0.1-SNAPSHOT.jar
    ```
    The backend server will typically start on `http://localhost:8080`.

**2. Frontend Setup:**

*   **Install Dependencies:**
    ```bash
    # Navigate to the frontend directory
    cd frontend

    # Install required packages
    npm install 
    # Or if using yarn: yarn install
    ```
*   **Run:**
    ```bash
    # Start the React development server
    npm start
    # Or if using yarn: yarn start
    ```
    The frontend development server will typically start on `http://localhost:3000`.

**3. Accessing the Application:**

*   Open your web browser and navigate to `http://localhost:3000`.
*   Log in using predefined credentials (check `data.sql` or database for examples like `admin`/`admin123`, `leader1`/`leader123`, `member1`/`member123`).

## Usage

*   **Login:** Use the credentials for your desired role.
*   **Admin:** Create projects, assign leaders/members, send global notifications via the project dropdown, delete projects.
*   **Team Leader:** View projects you lead, update project status, create tasks within projects, assign tasks to *project* members, send notifications for your projects.
*   **Team Member:** View projects you are part of, view tasks, update the status *only* for tasks assigned to you. 
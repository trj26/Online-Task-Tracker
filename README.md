# 📝 Online Task Tracker - Java Full Stack Project

A simple full-stack Java web application to assign and track tasks using Servlets, JSP, JDBC, and MySQL.

## 🚀 Features

- Add new tasks with title, description, and assignee
- View all tasks in a dynamic HTML table
- JSP + Servlet based architecture (MVC)
- JDBC connectivity with MySQL
- Clean and modular code

## 🛠 Tech Stack

- Java (Servlets, Core Java)
- JSP, HTML, CSS
- MySQL (RDBMS)
- JDBC (Java Database Connectivity)
- Apache Tomcat (v9)
- Eclipse IDE

## 📂 Project Structure

OnlineTaskTracker/
├── src/
│ └── com.tasktracker.controller/
│ └── TaskServlet.java
├── WebContent/
│ ├── assignTask.jsp
│ ├── viewTasks.jsp
│ ├── css/
│ │ └── style.css
│ └── WEB-INF/
│ ├── web.xml
│ └── lib/
│ └── mysql-connector-j-8.0.xx.jar


## ⚙️ Setup Instructions

1. Create `tasktracker` database in MySQL:

```sql
CREATE DATABASE tasktracker;
USE tasktracker;
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    assignedTo VARCHAR(100)
);


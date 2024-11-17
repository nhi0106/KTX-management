# Dormitory Management System

This project is a comprehensive dormitory management system leveraging a wide range of technologies including HTML, CSS, JavaScript, jQuery, Bootstrap, Oracle, Java, Spring Boot, MVC, JSP, JPA, and Tomcat.

## Table of Contents

- [Introduction](#introduction)
- [Project Structure](#project-structure)
- [Features](#features)
- [Getting Started](#getting-started)
- [Installation](#installation)
- [Usage](#usage)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Dormitory Management System is designed to streamline and automate various tasks involved in managing a dormitory. It provides features for managing student information, room allocations, fee payments, and more, all through an intuitive web interface.

## Features

- **Student Management**: Add, update, delete, and view student information.
- **Room Allocation**: Assign rooms to students and manage room details.
- **Fee Management**: Track and manage fee payments and dues.
- **Reporting**: Generate various reports for administrative purposes.
- **Authentication and Authorization**: Secure login and role-based access control.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript, jQuery, Bootstrap
- **Backend**: Java, Spring Boot, MVC, JSP, JPA
- **Database**: Oracle
- **Server**: Tomcat

## Getting Started
### Prerequisites

Ensure you have the following installed:
- Java JDK 21 or higher
- Maven 3.8.2 or higher
- Oracle 19c Database
- Tomcat Server
- Docker (optional, for containerization)

### Installation

1. **Clone the repository:**
    ```sh
    git clone <repository_url>
    cd <repository_directory>
    ```


2. **Web application setup:**
    - Navigate to the project directory:
      ```sh
      cd <repository_directory>
      ```
    - Build the project using Maven:
      ```sh
      ./mvnw clean install
      ```

3. **Database setup:**
    - Set up the Oracle database and configure the connection details in the `application.properties` file.
  

### Running the Application

To run the application locally, execute the following command in the project root
```sh
mvn spring-boot:run
```


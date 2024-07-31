# Curriculum Vitae

Project about a curriculum vitae developed using Angular, Node with Express.

## Project Status

This project is currently under development.

## Introduction

This project is a web-based application for showcasing a professional curriculum vitae. It includes details such as work experience, education, skills, and projects. The front end is developed using Angular, and the back end is built with Node.js and Express.

## Features

- User-friendly interface to display CV details
- Sections for work experience, education, skills, and projects
- Responsive design for different devices
- Easy to navigate layout
- Backend API for fetching CV data

## Technologies Used

- **Front End:**
  - Angular
  - HTML
  - CSS

- **Back End:**
  - Node.js
  - Express

## Installation

To run this project locally, follow these steps:

### Prerequisites

- Node.js and npm installed on your machine
- Angular CLI installed globally

### Clone the Repository

```bash
git clone https://github.com/david87chdz/cvAngular.git
cd curriculum-vitae
```
Install Dependencies
For the Back End:
```bash
cd backend
npm install
```
For the Front End:
```bash
cd ../frontend
npm install
```
Running the Application
Using Docker Compose
You can run the entire application, including the database and pgAdmin, using Docker Compose.

Start Docker Containers
From the root of the project, run:

```bash
docker-compose up
```
This will start the PostgreSQL database, pgAdmin, and the application.

The front end will be available at http://localhost:4200
The back end will be available at http://localhost:3000
pgAdmin will be available at http://localhost:80
Stop Docker Containers
To stop the running containers, use:

```bash
docker-compose down
````
## Usage

1. Open your browser and go to [http://localhost:4200](http://localhost:4200).
2. Navigate through the sections to explore the CV details.
3. Use the provided buttons to view specific sections of the CV.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to submit a pull request. Please make sure to follow the project's coding standards and include appropriate tests.

### Steps to Contribute

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/your-feature-name`.
3. Make your changes and commit them: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature/your-feature-name`.
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or suggestions about this project, feel free to contact me via [Email](mailto:david87chdz@gmail.com) or on [GitHub](https://github.com/david87chdz).

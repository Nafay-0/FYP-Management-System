# FYP Management System

The FYP Management System is a web application built on ASP.NET that provides a centralized platform for managing Final Year Projects (FYP) for university students and departments. It enables easy tracking, approval, disapproval, and status updates of FYPs, facilitating efficient communication and collaboration among students and faculty.

## Features

- **FYP Submission:** Students can submit their FYP proposals and related documents through the system.
- **Approval Workflow:** Facilitates the approval process, allowing faculty members to review and approve FYP proposals.
- **Status Tracking:** Students and faculty can easily track the status of each FYP, including approval status, project milestones, and deadlines.
- **Document Management:** Provides a centralized location for storing and accessing FYP-related documents, such as proposals, progress reports, and presentations.
- **Reporting and Analytics:** Generates reports and analytics to provide insights into FYP progress, success rates, and other relevant metrics.

## Getting Started

To run the FYP Management System on your local machine, follow these steps:

### Prerequisites

- ASP.NET development environment (Visual Studio, Visual Studio Code, etc.)
- .NET Framework installed 
- Microsoft SQL Server Management Studio installed 

### Installation

1. Clone the Repository: Clone this repository to your local machine using Git or download the source code as a ZIP file and extract it.

2. Set Up the Database: Create a new database for the system in SQL Server. Execute the provided SQL scripts (`schema.sql` and `data.sql`) to create the necessary tables and seed sample data.

3. Configure the Connection String: Open the project in your preferred development environment and locate the `appsettings.json` or `web.config` file. Update the connection string with your SQL Server database details.

4. Build and Run the Application: Build the project and run it using your development environment. Ensure all dependencies are installed.

5. Access the Application: Once the application is running, open a web browser and navigate to the specified URL or `localhost` to access the FYP Management System.


## Contributing

Contributions to the FYP Management System are welcome! If you have any improvements, bug fixes, or new features, please feel free to submit a pull request!

## License

This project is licensed under the [MIT License](LICENSE).

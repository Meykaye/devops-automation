# Docker Jenkins Project

## Overview

This project demonstrates how to set up a Jenkins server using Docker. Jenkins is a popular open-source automation server that helps automate parts of the software development process, including building, testing, and deploying applications. By containerizing Jenkins with Docker, you can easily manage and scale your CI/CD pipelines.

## Features

- **Dockerized Jenkins**: Run Jenkins in a Docker container for easy setup and management.
- **Persistent Storage**: Jenkins data is stored in a Docker volume to ensure persistence across container restarts.
- **Pre-configured Plugins**: Includes essential Jenkins plugins for CI/CD workflows.
- **Customizable**: Easily extend the Docker image to include additional tools or configurations.

## Prerequisites

- **Docker**: Ensure Docker is installed on your system. You can download it from [here](https://docs.docker.com/get-docker/).
- **Docker Compose**: Optional, but recommended for managing multi-container setups. Download it from [here](https://docs.docker.com/compose/install/).

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Meykaye/docker-jenkins-project.git
   cd docker-jenkins-project
   ```

2. **Build the Docker Image**:
   ```bash
   docker build -t my-jenkins .
   ```

3. **Run the Jenkins Container**:
   ```bash
   docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name jenkins my-jenkins
   ```

   - `-d`: Run the container in detached mode.
   - `-p 8080:8080`: Map port 8080 on the host to port 8080 on the container (Jenkins web interface).
   - `-p 50000:50000`: Map port 50000 on the host to port 50000 on the container (for Jenkins agents).
   - `-v jenkins_home:/var/jenkins_home`: Use a Docker volume to persist Jenkins data.

4. **Access Jenkins**:
   - Open your web browser and navigate to `http://localhost:8080`.
   - Follow the on-screen instructions to complete the Jenkins setup.

## Using Docker Compose

Alternatively, you can use Docker Compose to manage the Jenkins container:

1. **Start the Jenkins Container**:
   ```bash
   docker-compose up -d
   ```

2. **Access Jenkins**:
   - Open your web browser and navigate to `http://localhost:8080`.

## Configuration

### Jenkins Plugins

The Docker image includes a set of pre-installed plugins. You can customize the plugins by modifying the `plugins.txt` file before building the Docker image.

### Persistent Data

Jenkins data is stored in a Docker volume named `jenkins_home`. This ensures that your Jenkins configuration, jobs, and logs are preserved even if the container is restarted or recreated.

### Customizing the Docker Image

To add additional tools or configurations, modify the `Dockerfile` and rebuild the image:

```bash
docker build -t my-custom-jenkins .
```

## Example Usage

### Running a Jenkins Job

1. **Create a New Job**:
   - Log in to the Jenkins web interface.
   - Click on "New Item" to create a new job.
   - Choose the type of job (e.g., Freestyle project, Pipeline) and configure it.

2. **Run the Job**:
   - Once the job is configured, click "Build Now" to run it.
   - Monitor the build progress and view logs in the Jenkins interface.

### Adding Jenkins Agents

To add Jenkins agents (nodes) for distributed builds:

1. **Set Up an Agent**:
   - Install Java and the Jenkins agent JAR on the target machine.
   - Configure the agent to connect to the Jenkins master (e.g., via SSH or JNLP).

2. **Add the Agent in Jenkins**:
   - Go to "Manage Jenkins" > "Manage Nodes and Clouds".
   - Click "New Node" and configure the agent settings.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- **Jenkins**: For providing a powerful automation server.
- **Docker**: For making containerization easy and accessible.

## Contact

For any questions or feedback, please open an issue on the GitHub repository or contact the project maintainer.

---

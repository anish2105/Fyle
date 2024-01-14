# Fyle Backend Challenge

### Steps to Run Docker Image:

1. **Build Docker Image:**
   - Build the Docker image using the command:
     ```
     docker build -t your_image_name .
     ```

2. **Run Docker Image:**
   - Run the Docker container using the command:
     ```
     docker run -p 7755:7755 your_image_name
     ```

3. **Run Tests in Docker Container:**
   - Run tests inside the Docker container with the command:
     ```
     docker run your_image_name /bin/bash -c 'pytest -vvv -s tests/'
     ```

4. **Run Tests with Code Coverage:**
   - Run tests with code coverage inside the Docker container:
     ```
     docker run your_image_name /bin/bash -c 'pytest --cov'
     ```

### Docker Compose:

- **Build Docker Image:**
  ```
  docker-compose build
  ```

- **Run Docker Container:**
  ```
  docker-compose up
  ```

**Note:** Replace 'your_image_name' with your intended Docker image name.

Feel free to copy and paste this information into your documentation file.

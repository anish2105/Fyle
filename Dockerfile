# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app



# Create a virtual environment and activate it
RUN python3 -m venv env
RUN /bin/bash -c "source env/bin/activate"

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*



# Reset the database
RUN export FLASK_APP=core/server.py 

# Set the environment variable for Flask
ENV FLASK_APP=core/server.py

# the Gunicron thingy

# Make port 7755 available to the world outside this container
EXPOSE 7755


# Run app.py when the container launches
CMD ["bash", "run.sh"]


##Commands to run the docker image.

# docker build -t testapp . 
# docker run -p 7755:7755 testapp   
# docker run testapp /bin/bash -c "pytest -vvv -s tests/"
# docker run testapp /bin/bash -c "pytest --cov"
# docker run -it testapp /bin/bash -c "export FLASK_APP=core/server.py && rm core/store.sqlite3 && flask db upgrade -d core/migrations/"
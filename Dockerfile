# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /MICROSERVICES

# Copy the current directory contents into the container at /app
COPY . /MICROSERVICES

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8080 5000

# Run app.py when the container launches
CMD ["python3", "app.py"]
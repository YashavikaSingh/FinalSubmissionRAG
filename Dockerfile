# Use an appropriate base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install ZenML
RUN pip install zenml

# Copy the app code into the container
COPY . /app/

# Expose the port
EXPOSE 8000

# Set the default command to run your app
CMD ["python", "app.py"]
# Use official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy current directory contents into container
COPY . .

# Run the Python script
CMD ["python", "app.py"]

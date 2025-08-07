# Use official Python base image
FROM python:latest

# Copy current directory contents into container
COPY python_image .

# Run the Python script
CMD ["python3", "file.py"]

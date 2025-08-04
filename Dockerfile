# Use Python base image
FROM python:latest

# Set work directory
WORKDIR /app

# Update system packages and install necessary packages
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y --no-install-recommends gcc libjpeg-dev zlib1g-dev && pip install --upgrade pip && pip install qrcode[pil] && apt-get purge -y gcc libjpeg-dev zlib1g-dev && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy script into container
COPY file.py .

# Set environment variable default
ENV PASSWORD_LENGTH=12

# Run the script
CMD ["python3", "file.py"]

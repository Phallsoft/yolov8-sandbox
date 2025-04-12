# Dockerfile
FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git wget curl unzip \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Ultralytics and dependencies
RUN pip install --upgrade pip
RUN pip install ultralytics

# Default command
CMD ["bash"]

# Use an official Python 3.9 image (TF 2.9.1 supports this)
FROM python:3.9-slim

# Prevent Python from buffering stdout
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy requirements first (faster Docker build layer)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project
COPY . .

# Expose the web server port
EXPOSE 10000

# Start the Flask app using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:10000", "app:app"]

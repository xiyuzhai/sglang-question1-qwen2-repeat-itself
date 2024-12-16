# Use the official Python image
FROM python:3.12-slim

# Set environment variables to reduce warnings
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set a working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# Command to run the bug demonstration script
CMD ["python", "bug_demo.py"]

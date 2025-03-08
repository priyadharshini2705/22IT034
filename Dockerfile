# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy the API script into the container
COPY personal-api.py .

# Install dependencies
RUN pip install flask

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the API
CMD ["python", "personal-api.py"]

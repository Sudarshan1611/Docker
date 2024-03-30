FROM python:3.8-buster

WORKDIR /app


RUN pip install Flask

# Copy the application code
COPY . /app

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]

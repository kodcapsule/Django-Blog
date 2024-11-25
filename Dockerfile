#Official Python 3 base image
FROM python:3.12.4-alpine


# Set the environment variable for Django

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
# 1. This prevents Python from writing out pyc files
ENV PYTHONDONTWRITEBYTECODE=1

# This keeps Python from buffering stdin/stdout
ENV PYTHONUNBUFFERED=1



WORKDIR /app


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt


# Copy the current directory contents into the container at /app
COPY . .

# Expose the port that Django runs on
EXPOSE 8000

# Run the Django application using the default development server


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

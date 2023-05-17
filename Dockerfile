FROM python:latest

# Set the working directory
WORKDIR /tour_project

# Copy your application code to the container
COPY tour_project /tour_project
COPY requirements.txt /temp/requirements.txt


# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Set the command to run your application
CMD [ "python", "manage.py", "runserver" ]
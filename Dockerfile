# Use a base image
FROM python:3.9

# Set the working directory
WORKDIR /src

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose the port on which the app runs
EXPOSE 5000

# Define the command to run the application
CMD ["python", "src/server.py"]

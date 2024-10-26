# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the necessary packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project directory into the container
COPY . .

# Download NLTK resources (if required, uncomment the following lines)
# RUN python -m nltk.downloader punkt
# RUN python -m nltk.downloader wordnet

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "your_script_name:app", "--host", "0.0.0.0", "--port", "8000"]

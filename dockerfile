# Base Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy all files from current dir to /app in container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Streamlit
EXPOSE 8501

# Run Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]

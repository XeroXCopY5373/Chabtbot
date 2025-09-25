# Use official Python 3.13 image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy everything to /app
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit default port
EXPOSE 7860

# Run Streamlit app
CMD ["streamlit", "run", "chatbot.py", "--server.port", "7860", "--server.address", "0.0.0.0"]

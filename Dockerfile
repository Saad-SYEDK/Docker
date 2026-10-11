FROM python:3.13-slim

WORKDIR /code

# Install FastAPI and Uvicorn directly since you have a single file
RUN pip install --no-cache-dir fastapi uvicorn
# Copy your main.py file into the container
COPY main.py /code/main.py

# Expose the port Uvicorn will run on
EXPOSE 8000

# Run Uvicorn and bind it to 0.0.0.0 so you can access it externally
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

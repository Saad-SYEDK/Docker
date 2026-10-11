FROM python:3.13    
COPY . /code
WORKDIR /code
CMD uvicorn main:app --reload
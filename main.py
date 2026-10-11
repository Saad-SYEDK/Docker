from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def base():
    return f"Welcome"

@app.get("/hello/{name}")
async def hello(name):
    return f"Welcome {name}"
import os

from fastapi import FastAPI
import uvicorn as uvicorn


app = FastAPI()


@app.get("/")
def index():
    return {"test": "response"}


if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=os.environ.get("PORT", 5000))

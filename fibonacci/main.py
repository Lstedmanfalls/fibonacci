from fastapi import FastAPI
from .routers import main

app = FastAPI()

app.include_router(main.router)

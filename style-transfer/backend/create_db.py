from sqlmodel import SQLModel
from models import Notes
from db import engine

print("CREATING DATABASE.....")

SQLModel.metadata.create_all(engine)

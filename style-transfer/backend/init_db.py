from db import engine, Base
from models import User, Notes


Base.metadata.create_all(bind=engine)
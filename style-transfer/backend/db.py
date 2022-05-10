from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker


engine = create_engine('postgresql://postgres:SECRET_KEY@localhost/emotion.db', ehco = True)

Base = declarative_base()

session = sessionmaker()

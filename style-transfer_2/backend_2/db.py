from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker


engine = create_engine('postgresql+psycopg2://postgres:password@postgres:5432/Emotion', echo = True)
#nom of container postgresql

Base = declarative_base()

session = sessionmaker()

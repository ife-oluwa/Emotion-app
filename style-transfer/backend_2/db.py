from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker


engine = create_engine('postgresql+psycopg2://postgres:password@db:5432/Emotion_db', echo = True)
#nom of container postgresql

Base = declarative_base()

session = sessionmaker()

from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker


engine = create_engine('postgresql://postgres:Gengar21+@localhost/Emotion', echo = True)
#nom of container postgresql

Base = declarative_base()

session = sessionmaker()

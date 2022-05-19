import datetime as _dt

from sqlalchemy import (
    Boolean,
    Column,
    DateTime,
    ForeignKey,
    Integer,
    String,
    Text,
    create_engine,
)
from sqlalchemy.orm import declarative_base, relationship, sessionmaker
from sqlalchemy.sql import func

engine = create_engine("postgresql+psycopg2://postgres:password@postgres:5432/Emotion", echo=True)
# nom of container postgresql

Base = declarative_base()

session = sessionmaker()


class User(Base):
    __tablename__ = "Users"
    id = Column(Integer, primary_key=True, index=True)
    username = Column(String(25), unique=True)
    FirstName = Column(String(25), nullable=False)
    LastName = Column(String(25), nullable=False)
    email = Column(String(25), unique=True)
    password = Column(Text, nullable=False)
    is_admin = Column(Boolean, default=False)
    notes = relationship("Notes", back_populates="user")
    date_created = Column(DateTime, default=_dt.datetime.utcnow)

    def __repr__(self):
        return f"User {self.username}"


class Notes(Base):
    __tablename__ = "Notes"
    id = Column(Integer, primary_key=True)
    Notes = Column(Text, nullable=False)
    user_id = Column(Integer, ForeignKey("Users.id"))
    Emotion = Column(Text, nullable=False)  ##do not forget to edit json table
    date_created = Column(DateTime(timezone=True), server_default=func.now())
    date_updated = Column(DateTime(timezone=True), onupdate=func.now())
    user = relationship("User", back_populates="notes")

    def __repr__(self):
        return f"Notes {self.id}"


class Patients(Base):
    __tablename__ = "Patients"
    id = Column(Integer, primary_key=True)
    first_name = Column(String(25), nullable=False)
    last_name = Column(String(25), nullable=False)
    email = Column(String(25), nullable=False)
    age = Column(Integer, nullable=False)
    dob = Column(String(25), nullable=False)
    date_added = Column(DateTime(timezone=True), server_default=func.now())

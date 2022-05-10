from ast import In
from db import Base
from sqlalchemy import Column, Integer, Boolean, Text, String, ForeignKey, DateTime
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func


class User(Base):
    __tablename__ = 'Users'
    id = Column(Integer, primary_key=True)
    username = Column(String(25), unique=True)
    FirstName = Column(String(25), nullable=False)
    LastName = Column(String(25), nullable=False)
    email = Column(String(25), unique=True)
    password = Column(Text, nullable=False)
    is_admin = Column(Boolean, default=False)
    notes = relationship('Notes', back_populates='user')

    def __repr__(self):
        return f'User {self.username}'

class Notes(Base):
    __tablename__ = 'Notes'
    id = Column(Integer, primary_key=True)
    Notes = Column(Text, nullable=False)
    user_id = Column(Integer, ForeignKey("Users.id"))
    date_created = Column(DateTime(timezone=True), server_default=func.now())
    date_updated = Column(DateTime(timezone=True), onupdate=func.now())
    user = relationship('User', back_populates='notes')

    def __repr__(self):
        return f'Notes {self.id}'

class Patients(Base):
    __tablename__ = 'Patients'
    id = Column(Integer, primary_key=True)
    first_name = Column(String(25), nullable=False)
    last_name = Column(String(25), nullable=False)
    email = Column(String(25), nullable=False)
    age = Column(Integer, nullable=False)
    date_added = Column(DateTime(timezone=True), server_default=func.now())
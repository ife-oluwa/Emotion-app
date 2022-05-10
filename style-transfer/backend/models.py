from ast import In
from db import Base
from sqlalchemy import Column, Integer, Boolean, Text, String, ForeignKey
from sqlalchemy.orm import relationship


class User(Base):
    __tablename__ = 'Users'
    id = Column(Integer, primary_key=True)
    username = Column(String(25), unique=True)
    FirstName = Column(String(25), unique=True)
    LastName = Column(String(25), unique=True)
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
    user = relationship('User', back_populates='notes')

    def __repr__(self):
        return f'Notes {self.id}'
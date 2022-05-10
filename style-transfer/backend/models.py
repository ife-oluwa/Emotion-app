from ast import In
from db import Base
from sqlalchemy import Column, Integer, Boolean, Text, String, ForeignKey
from sqlalchemy.orm import relationship


class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    FirstName = Column(String(25), unique=True)
    LastName = Column(String(25), unique=True)
    email = Column(String(25), unique=True)
    password = Column(Text, nullable=False)
    is_admin = Column(Boolean, default=False)
    notes = relationship('Notes', back_populates='users')

    def __repr__(self):
        return f'<User {self.username}>'

class Notes(Base):
    ___tablename__ = 'notes'
    id = Column(Integer, primary_key=True)
    Notes = Column(Text, nullable=False)
    user_id = Column(Integer, ForeignKey("user.id"))
    user = relationship('User', back_populates='notes')

    def __repr__(self):
        return f'<Notes {self.id}>'
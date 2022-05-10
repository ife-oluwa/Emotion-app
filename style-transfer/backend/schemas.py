from pydantic import BaseModel
from typing import Optional


class SignUpModel(BaseModel):
    id: Optional[int]
    username:str
    FirstName:str
    LastName:str
    email:str
    password:str
    is_admin:Optional[bool]


    class Config:
        orm_mode = True
        schema_extra = {
            'example': {
                "username": "JohnD",
                "FirstName": "John",
                "LastName": "Doe",
                "email": "john@example.com",
                "password": "password",
                "is_admin": False
            }
        }
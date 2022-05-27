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

class Settings(BaseModel):
    authjwt_secret_key:str = '1545d18f93a9f6776fb9b46558e062c6f85196f1cb4a52e525e8849f9657123f'

class LoginModel(BaseModel):
    username:str
    password:str

class NotesModel(BaseModel):
    id: Optional[int]
    Notes: str
    DateCreated: Optional[str]
    DateMod: Optional[str]
    user_id: Optional[int]

    class Config:
        orm_mode = True
        schema_extra = {
            "example":{
                "Notes": "i am feeling happy"
            }

        }

class PatientsModel(BaseModel):
    id: Optional[int]
    first_name: str
    last_name: str
    email: str
    age: int
    date_added: Optional[str]
from fastapi import APIRouter, status
from db import session, engine
from models import User
from schemas import SignUpModel
from fastapi.exceptions import HTTPException
from werkzeug.security import generate_password_hash, check_password_hash

auth_router = APIRouter(
    prefix='/auth',
    tags=['auth']
)


session = session(bind=engine)

@auth_router.get('/')
async def hello():
    return {"message": "Hello"}

@auth_router.post('/signup', status_code= status.HTTP_201_CREATED)
async def signup(user:SignUpModel):
    db_email = session.query(User).filter(User.email==user.email).first()

    if db_email is not None:
        return HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Email already exists")
    
    db_username = session.query(User).filter(User.username==user.username).first()

    if db_username is not None:
        return HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Username already exists")

    new_user = User(
        username=user.username,
        FirstName=user.FirstName,
        LastName=user.LastName,
        email=user.email,
        password = generate_password_hash(user.password),
        is_admin = user.is_admin
    )

    session.add(new_user)

    session.commit()

    return new_user
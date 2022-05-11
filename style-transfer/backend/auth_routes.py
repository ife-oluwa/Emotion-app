from os import access
from re import S
from fastapi import APIRouter, status, Depends
from db import session, engine
from models import User
from schemas import SignUpModel, LoginModel
from fastapi.exceptions import HTTPException
from werkzeug.security import generate_password_hash, check_password_hash
from fastapi_jwt_auth import AuthJWT
from fastapi.encoders import jsonable_encoder
from fastapi.exceptions import HTTPException
import requests

auth_router = APIRouter(
    prefix='/auth',
    tags=['auth']
)


session = session(bind=engine)

@auth_router.get('/')
async def hello(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code = status.HTTP_401_UNAUTHORIZED, 
        detail="Invalid token"
        )
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


#login route
@auth_router.post('/login', status_code=200)
async def login(user:LoginModel, Authorize:AuthJWT=Depends()):
    db_user = session.query(User).filter(User.username == user.username).first()

    if db_user and check_password_hash(db_user.password, user.password):
        access_token = Authorize.create_access_token(subject=db_user.username)
        refresh_token = Authorize.create_refresh_token(subject=db_user.username)

        response = {
            "access": access_token,
            "refresh": refresh_token
        }

        return jsonable_encoder(response)

    raise HTTPException(status_code= status.HTTP_400_BAD_REQUEST,  detail= 'Invalid Username Or Password')


#refreshing tokens

@auth_router.get('/refresh')
async def refresh_token(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_refresh_token_required()
    except Exception as e:
        raise HTTPException(status_code = status.HTTP_401_UNAUTHORIZED, 
        detail="Please provide a valid refresh token"
        )
    
    current_user = Authorize.get_jwt_subject()

    access_token = Authorize.create_access_token(subject=current_user)

    return jsonable_encoder({"access_token": access_token})
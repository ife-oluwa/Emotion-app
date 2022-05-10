from fastapi import APIRouter, Depends, status
from fastapi.exceptions import HTTPException
from fastapi_jwt_auth import AuthJWT
from regex import E
from models import User, Notes
from schemas import NotesModel
from db import session, engine
from fastapi.encoders import jsonable_encoder


notes_router = APIRouter(
    prefix = '/notes',
    tags = ['notes']
)

session = session(bind=engine)

@notes_router.get('/')
async def hello(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    
    except Exception as e:
        raise HTTPException(
            status_code= status.HTTP_401_UNAUTHORIZED,
            detail='Invalid Token'
        )
    return {"message": "Hello"}


@notes_router.post('/write_note', status_code=status.HTTP_201_CREATED)
async def write_note(write_note:NotesModel, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    
    except Exception as e:
        raise HTTPException(
            status_code= status.HTTP_401_UNAUTHORIZED,
            detail='Invalid Token'
        )

    current_user = Authorize.get_jwt_subject()
    user = session.query(User).filter(User.username==current_user).first()

    new_note = Notes(
        Notes = write_note.Notes
    )

    new_note.user = user

    session.add(new_note)

    session.commit()

    response = {
        "notes": new_note.Notes,
        "id": new_note.id
    }

    return jsonable_encoder(response)


@notes_router.get('/all_notes')
async def list_all_notes(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
        detail = "Invalid Token")
    current_user = Authorize.get_jwt_subject()

    user = session.query(User).filter(User.username == current_user).first()

    if user.is_admin and user.id == 1: 
        notes = session.query(Notes).all()

        return jsonable_encoder(notes)

    raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail= "You are not admin")

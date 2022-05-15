from fastapi import APIRouter, Depends, status
from fastapi.exceptions import HTTPException
from fastapi_jwt_auth import AuthJWT
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
def hello(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    
    except Exception as e:
        raise HTTPException(
            status_code= status.HTTP_401_UNAUTHORIZED,
            detail='Invalid Token'
        )
    return {"message": "Hello"}


@notes_router.post('/write_note', status_code=status.HTTP_201_CREATED)
def write_note(write_note:NotesModel, Authorize:AuthJWT=Depends()):
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
        "id": new_note.id,
        "notes": new_note.Notes
        
    }

    return jsonable_encoder(response)


@notes_router.get('/all_notes')
def list_all_notes(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
        detail = "Invalid Token")
    current_user = Authorize.get_jwt_subject()

    user = session.query(User).filter(User.username == current_user).first()

    if user.is_admin: 
        notes = session.query(Notes).all()

        return jsonable_encoder(notes)

    raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail= "You are not admin")

@notes_router.get('/all_notes/{name}')
def get_note_by_name(name:str, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="invalid Token")
    current_user = Authorize.get_jwt_subject()

    user = session.query(User).filter(User.username == current_user).first()

    if user.is_admin:
        note = session.query(Notes).filter(Notes.Notes == name).first()

        return jsonable_encoder(note)

    raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="User is not authorized")


@notes_router.get('/user/notes')
def get_user_notes(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="invalid Token")
    current_user = Authorize.get_jwt_subject()

    user = session.query(User).filter(User.username == current_user).first()

    return jsonable_encoder(user.notes)


@notes_router.get('/user/note/{note}')
def get_spec_note(note: str, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Invalid Token")

    subject = Authorize.get_jwt_subject()
    
    user = session.query(User).filter(User.username == subject).first()

    notes = user.notes

    for n in notes:
        if n.Notes == note:
            return jsonable_encoder(n)
    
    raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail=f"no note: {note}")


@notes_router.put('/note/update/{note_name}')
def update_note(note_name:str, note:NotesModel, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()

    except Exception as e:
        raise HTTPException(status_code = status.HTTP_401_UNAUTHORIZED, detail="Invalid Token")

    note_to_update = session.query(Notes).filter(Notes.Notes == note_name).first()
    note_to_update.Notes = note.Notes
    #note_to_update.DateCreated = note.DateCreated

    session.commit()

    return jsonable_encoder(note_to_update)


@notes_router.delete('/note/delete/{note_name}', status_code=status.HTTP_204_NO_CONTENT)
def delete_note(note_name:str, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail='Invalid Token')
    note_to_delete = session.query(Notes).filter(Notes.Notes == note_name).first()
    
    session.delete(note_to_delete)

    session.commit()
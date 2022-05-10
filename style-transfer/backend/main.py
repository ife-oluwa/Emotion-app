from fastapi import FastAPI, status
from fastapi.exceptions import HTTPException
from models import Notes
from db import engine
from sqlmodel import Session, select
from typing import Optional, List
from auth_routes import auth_router
from notes_routes import notes_router


app = FastAPI()

app.include_router(auth_router)
app.include_router(notes_router)

# session = Session(bind=engine)

# @app.get('/notes', response_model = List[Notes], status_code = status.HTTP_200_OK)
# async def get_all_notes():
#     statement = select(Notes)
#     results = session.exec(statement).all()

#     return results

# @app.post('/notes', response_model= Notes, status_code=status.HTTP_201_CREATED)
# async def create_note(note: Notes):
#     new_note = Notes(title=note.title,description=note.description)
#     session.add(new_note)
#     session.commit()
#     return new_note

# @app.get('/notes/{note_id}',  response_model = Notes)
# async def get_note(note_id: int):
#     statement = select(Notes).where(note_id == note_id)
#     results = session.exec(statement).first()
    
    
#     if results == None:
#         raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

#     return results


# @app.put('/notes/{note_id}', response_model = Notes)
# async def update_note(note_id: int, note: Notes):
#     statement = select(Notes).where(Notes.id == note_id)

#     result = session.exec(statement).first()

#     result.title = note.title
#     result.description = note.description

#     session.commit()

#     return result

# @app.delete('/notes/{note_id}', status_code = status.HTTP_204_NO_CONTENT)
# async def delete_note(note_id: int):
#     statement = select(Notes).where(Notes.id == note_id)

#     result = session.exec(statement).one_or_none()
#     if result == None:
#         raise HTTPException(status_code= status.HTTP_404_NOT_FOUND,
#         detail= "Resource Not Found")
#     session.delete(result)

#     return result
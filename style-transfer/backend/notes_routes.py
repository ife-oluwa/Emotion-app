from fastapi import APIRouter

notes_router = APIRouter(
    prefix = '/notes',
    tags = ['notes']
)


@notes_router.get('/')
async def hello():
    return {"message": "Hello"}
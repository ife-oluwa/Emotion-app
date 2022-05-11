from fastapi import FastAPI
from auth_routes import auth_router
from notes_routes import notes_router
from fastapi_jwt_auth import AuthJWT
from schemas import Settings
import uvicorn

app = FastAPI()

@AuthJWT.load_config
def get_config():
    return Settings()

    
app.include_router(auth_router)
app.include_router(notes_router)

if __name__ == '__main__':
    uvicorn.run("main:app", host="0.0.0.0", port=8080)
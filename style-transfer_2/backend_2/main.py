from fastapi import FastAPI
from auth_routes import auth_router
from notes_routes import notes_router
from patients_route import patient_router
from fastapi_jwt_auth import AuthJWT
from schemas import Settings
import os
from dotenv import load_dotenv
from fastapi_sqlalchemy import DBSessionMiddleware

import uvicorn

load_dotenv('.env')

app = FastAPI()
app.add_middleware(DBSessionMiddleware, db_url = os.environ['DATABASE_URL'])

@AuthJWT.load_config
def get_config():
    return Settings()

    
app.include_router(auth_router)
app.include_router(notes_router)
app.include_router(patient_router)

if __name__ == '__main__':
    uvicorn.run(app, host="0.0.0.0", port=8000)
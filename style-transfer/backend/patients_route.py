from fastapi import APIRouter, Depends, status
from fastapi.exceptions import HTTPException
from fastapi_jwt_auth import AuthJWT
from models import User, Patients
from schemas import PatientsModel
from db import session, engine
from fastapi.encoders import jsonable_encoder

patient_router = APIRouter(
    prefix='patients',
    tags = ['patients']
)

session = session(bind=engine)

@patient_router.post('/add_patient', status_code = status.HTTP_201_CREATED)
async def add_patient(add_patient:PatientsModel, Authorize:AuthJWT=Depends()):
    try: 
        Authorize.jwt_required()

    except Exception as e:
        raise HTTPException(
            status_code = status.HTTP_401_UNAUTHORIZED,
            detail = 'Invalid Token'
        )

    current_user = Authorize.get_jwt_subject()
    user = session.query(User).filter(User.username == current_user).first()

    new_patient = Patients(
        first_name =add_patient.first_name,
        last_name = add_patient.last_name,
        email = add_patient.email,
        age = add_patient.age
    )

    session.add(new_patient)

    session.commit()
    
    response = {
        "id": new_patient.id,
        "first_name": new_patient.first_name,
        "last_name": new_patient.last_name,
        "email": new_patient.email,
        "age": new_patient.age
    }

    return jsonable_encoder(response)


@patient_router.get('/all_patients')
async def get_all_patients(Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
        detail = "Invalid Token")

    current_user = Authorize.get_jwt_subject()

    user = session.query(User).filter(User.username == current_user).first()

    if user.is_admin and user.id == 1:
        patients = session.query(Patients).all()

        return jsonable_encoder(patients)

    raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail = "You do not have admin access")

@patient_router.put('/patient/update/{first_name}_{last_name}')
async def update_patient(first_name: str, last_name: str, patient: PatientsModel, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    
    except Exception as e:
        raise HTTPException(status_code = status.HTTP_401_UNAUTHORIZED, detail = "Invalid Token")

    info_to_update = session.query(Patients).filter(Patients.first_name.like(first_name), 
                                    Patients.last_name.like(last_name)).first()
    info_to_update.first_name = patient.first_name
    info_to_update.last_name = patient.last_name
    info_to_update.email = patient.email
    info_to_update.age = patient.age

    session.commit()

    return jsonable_encoder(info_to_update)


@patient_router.delete('/patient/delete/{first_name}_{last_name}', status_code=status.HTTP_204_NO_CONTENT)
async def delete_patient(first_name: str, last_name: str, Authorize:AuthJWT=Depends()):
    try:
        Authorize.jwt_required()
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail = 'Invalid Token')
    patient_to_delete = session.query(Patients).filter(Patients.first_name.like(first_name), 
                                        Patients.last_name.like(last_name)).first()
    session.delete(patient_to_delete)

    session.commit()

    return patient_to_delete
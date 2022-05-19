import numpy as np
import pandas as pd
import requests
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.preprocessing.text import one_hot

backend = "http://localhost:8000"


def get_all_notes(token: str):
    url = backend + "/notes/all_notes"
    all_notes = requests.get(url, headers={"Authorization": "Bearer " + token})
    return all_notes


def send_text(note: str, pred: str, token: str):
    url = backend + "/notes/write_note"
    obj = {"Notes": note, "Emotion": "Happy"}
    r = requests.post(url, json=obj, headers={"Authorization": "Bearer " + token}, timeout=8000)
    return r


def get_all_user_notes(token: str):
    url = backend + "/notes/user/notes"
    all_notes = requests.get(url, headers={"Authorization": "Bearer " + token})
    return all_notes


def get_a_note(note: str, token: str):
    url = backend + "/notes/user/note/" + f"{note}"
    note = requests.get(url, headers={"Authorization": "Bearer " + token})
    return note


def update_note(note_name: str, new_note: str, token: str):
    url = backend + f"/notes/note/update/{note_name}"
    obj = {"Notes": new_note}
    update = requests.put(url, json=obj, headers={"Authorization": "Bearer " + token})
    return update


def delete_note(note_name: str, token: str):
    url = backend + f"/notes/note/delete/{note_name}"
    deleted = requests.delete(url, headers={"Authorization": "Bearer " + token})


def get_patients(token: str):
    url = backend + "/patients/all_patients"
    all_patients = requests.get(url, headers={"Authorization": "Bearer " + token})
    return all_patients


def get_users(token: str):
    url = backend + f"/auth/users"
    all_users = requests.get(url, headers={"Authorization": "Bearer " + token})
    return all_users


def get_user(username: str, token: str):
    url = backend + f"/auth/user/{username}"
    user = requests.get(url, headers={"Authorization": "Bearer " + token})
    return user


def remove_user(username, token: str):
    url = backend + f"/auth/delete/{username}"
    deleted = requests.delete(url, headers={"Authorization": "Bearer " + token})


def get_patient(first, last, token: str):
    url = backend + f"/patients/patient/{first}_{last}"
    patient = requests.get(url, headers={"Authorization": "Bearer " + token})
    return patient


def add_patient(patient_data, token: str):
    url = backend + "/patients/add_patient"
    patient = requests.post(url, json=patient_data, headers={"Authorization": "Bearer " + token})


def update_patient(data, first: str, last: str, token: str):
    url = backend + f"/patients/patient/update/{first}_{last}"
    update = requests.put(url, json=data, headers={"Authorization": "Bearer " + token})
    return update


def remove_patient(first, last, token: str):
    url = backend + f"/patients/patient/delete/{first}_{last}"
    deleted = requests.delete(url, headers={"Authorization": "Bearer " + token})


def add_user(user_data, token: str):
    url = backend + "/auth/signup"
    data = user_data
    user = requests.post(url, json=user_data, headers={"Authorization": "Bearer " + token})


def date_format(string, obj: str):
    if string != None:
        string = pd.to_datetime(string).strftime("%d-%m-%Y %H:%M:%S")
        date, time = string.split(" ")
        if obj == "date":
            return date
        else:
            return time
    else:
        return "-"


def text_analysis(text):
    model = load_model("../frontend/model/NLP.h5")
    ohe_trial = [one_hot(text, 40000)]
    embed = pad_sequences(ohe_trial, padding="pre", maxlen=120)
    pred = model.predict(embed)
    classes = list(np.argmax(pred, axis=1))
    if classes == [0]:
        return "Sad"
    if classes == [1]:
        return "Angry"
    if classes == [2]:
        return "Love"
    if classes == [3]:
        return "Surprise"
    if classes == [4]:
        return "Fear"
    else:
        return "Happy"

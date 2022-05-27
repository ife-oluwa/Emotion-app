import requests


backend = 'http://localhost:8000'

def get_all_notes(userName: str, password: str, token: str):
    cred = {"username": userName, "password": password}
    url = backend + '/notes/all_notes'
    all_notes = requests.get(url, headers = {'Authorization': 'Bearer ' + token})
    return all_notes
    

# def create_new_note()

# def get_a_note()

# def delete_note()

# def update_note()

# def add_patient()

# def update_patient()

# def remove_patient()

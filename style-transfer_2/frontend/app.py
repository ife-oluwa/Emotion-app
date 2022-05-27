from os import access

# from pages import home, patient_list, notes
import requests
import streamlit as st
from pandas import DataFrame, json_normalize

from admin_interface import *
from client_interface import *
from multiapp import MultiApp
from routes import *

# Backend connector
backend = "http://localhost:8000"

app = MultiApp()
headerSection = st.container()
mainSection = st.container()
loginSection = st.container()
logOutSection = st.container()


def login(userName: str, password: str):
    url = backend + "/auth/login"
    cred = {"username": userName, "password": password}
    login = requests.post(url, json=cred)
    if login.status_code == 200 and "admin" not in st.session_state:
        st.session_state["admin"] = login.json()["admin_status"]
    else:
        st.warning("Login Unsuccessful!")
    st.session_state["access_token"] = login.json()["access"]
    return "No response from server"


def LoggedOut_Clicked():
    st.session_state["loggedIn"] = False


def show_logout_page():
    with logOutSection:
        st.button("Log Out", key="logout", on_click=LoggedOut_Clicked)


def LoggedIn_Clicked(userName, password):
    if login(userName, password):
        st.session_state["loggedIn"] = True
        st.session_state["username"] = userName
        st.session_state["password"] = password
    else:
        st.session_state["loggedIn"] = False
        st.error("Invalid username or password")


def show_login_page():
    with loginSection:
        if st.session_state["loggedIn"] == False:
            userName = st.text_input(label="", value="", placeholder="Enter user name")
            password = st.text_input(label="", value="", placeholder="Enter password", type="password")
            st.button("Login", on_click=LoggedIn_Clicked, args=(userName, password))


# UI section


def Home_Page():
    with mainSection:
        if st.session_state["admin"]:
            admin_side()
        else:
            client_side()


# Run application
with headerSection:
    if "loggedIn" not in st.session_state:
        st.session_state["loggedIn"] = False
        show_login_page()

    else:
        if st.session_state["loggedIn"]:
            show_logout_page()
            Home_Page()
        else:
            show_login_page()

import streamlit as st
from multiapp import MultiApp
from pages import home, patient_list, notes
import requests

#Backnd connector
backend = "http://fastapi:8000"

app = MultiApp()
headerSection = st.container()
mainSection = st.container()
loginSection = st.container()
logOutSection = st.container()

app.add_app("Home", home.app)
app.add_app("Patients List", patient_list.app)
app.add_app("Notes", notes.app)

def show_main_page():
    with mainSection:
        pass
        
def LoggedOut_Clicked():
    st.session_state['loggedIn'] = False

def show_logout_page():
    with logOutSection:
        st.button ("Log Out", key = "logout", on_click=LoggedOut_Clicked)
def LoggedIn_Clicked(userName, password):
    if login(userName, password):
        st.session_state['loggedIn'] = True
    else:
        st.session_state['loggedIn'] = False;
        st.error('Invalid username or password')

def show_login_page():
    with loginSection:
        if st.session_state['loggedIn'] == False:
            userName = st.text_input (label="", value="", placeholder="Enter user name")
            password = st.text_input (label="", value="", placeholder="Enter password", type="password")
            st.button('Login', on_click= LoggedIn_Clicked, args = (userName, password))
            
with headerSection:
    st.title("Streamlit Application")

    if 'loggedIn' not in st.session_state:
        st.session_state['loggedIn'] = False
        show_login_page()
    else:
        if st.session_state['loggedIn']:
            show_logout_page()
            show_main_page()
        else:
            show_login_page()
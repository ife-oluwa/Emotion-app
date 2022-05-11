import streamlit as st

def app():
    st.title("Client informations")

    a1, a2, a3, a4= st.columns(4)
    a1.info("Username")
    a2.info("First Name")
    a3.info("Last Name")
    a4.info("Email address")

    b1, b2, b3 = st.columns(3)
    b1.info("Top sentiments")
    b2.info("Scores")
    b3.info("Date")

app()
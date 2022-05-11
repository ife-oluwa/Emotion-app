import streamlit as st

def app():
    st.title("Administrator Interface")
    st.subheader("This interface is helping you to manage your clients.")


    a1, a2, a3 = st.columns(3)


    a1.info("Patients")
    a2.info("Informations")
    a3.info("Modifications")


app()
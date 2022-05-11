import streamlit as st

def app():
    st.title("Emotion Analysis Application")
    st.subheader("This application permits you to add your texts daily !")

    st.subheader("Analysis")
    with st.form(key='nlpForm'):
        raw_text = st.text_area("Enter text here")
        date = st.date_input("Date of the text:")
        str_date = date.strftime("%d-%m-%Y")
        st.write("The text was written the :", str_date)
        submit_button = st.form_submit_button(label='Send text')

    if submit_button:
        add_expander(str_date, raw_text)


def add_expander(str_date, raw_text):
    expander = st.expander(str_date)
    expander.write(raw_text)

app()
import streamlit as st
from pandas import DataFrame

from routes import *


def client_side():
    st.title("Diary Application")

    menu = ["Make a note", "Read Notes", "Modify Notes", "Delete Note", "Test"]

    choice = st.sidebar.selectbox("Menu", menu)

    if choice == "Make a note":
        st.subheader("Add Notes")
        # Layout
        text_entry = st.container()

        with text_entry:
            note = st.text_area("What are your thoughts")
        if st.button("Add Note"):
            prediction = text_analysis(note)
            print(prediction)
            send_text(note, prediction, token=st.session_state["access_token"])
            st.success("Thank you for your thoughts.")

    elif choice == "Read Notes":
        st.subheader("View Items")
        results = get_all_user_notes(token=st.session_state["access_token"])
        notes = results.json()
        notes = [
            {
                "Notes": notes[i]["Notes"],
                "Emotion": notes[i]["Emotion"],
                "Date Created": date_format(notes[i]["date_created"], obj="date"),
                "Time Created": date_format(notes[i]["date_created"], obj="time"),
                "Date Updated": date_format(notes[i]["date_updated"], obj="date"),
                "Time Updated": date_format(notes[i]["date_updated"], obj="time"),
            }
            for i in range(0, len(notes))
        ]  # can specify column names here
        st.dataframe(notes)

    elif choice == "Modify Notes":
        st.subheader("Edit/Update Items")
        results = get_all_user_notes(token=st.session_state["access_token"])
        notes = results.json()
        # can specify column names here
        with st.expander("View all notes"):
            notes = [
                {
                    "Notes": notes[i]["Notes"],
                    "Date Created": date_format(notes[i]["date_created"], obj="date"),
                    "Time Created": date_format(notes[i]["date_created"], obj="time"),
                    "Date Updated": date_format(notes[i]["date_updated"], obj="date"),
                    "Time Updated": date_format(notes[i]["date_updated"], obj="time"),
                }
                for i in range(0, len(notes))
            ]
            df = DataFrame(notes)  # can specify column names here
            st.dataframe(df)
        list_of_notes = [notes[i]["Notes"] for i in range(0, len(notes))]
        selected_note = st.selectbox("Notes to Edit", list_of_notes)
        selected_item = get_a_note(selected_note, token=st.session_state["access_token"])
        item = selected_item.json()

        st.write(item["Notes"])
        if item:
            note_to_be_updated = item["Notes"]
            st.subheader("Edit Note")
        # Layout
        text_entry = st.container()
        with text_entry:
            new_note = st.text_area("Update note", note_to_be_updated)
        if st.button("Update Note"):
            update_note(note_name=note_to_be_updated, new_note=new_note, token=st.session_state["access_token"])
            st.success("Update... noted (lol).")
    else:
        st.subheader("Delete Notes")
        results = get_all_user_notes(token=st.session_state["access_token"])
        results = results.json()
        with st.expander("View all notes"):
            df = DataFrame(results)  # can specify column names here
            st.dataframe(df)
        list_of_notes = [results[i]["Notes"] for i in range(0, len(results))]
        selected_note = st.selectbox("Notes to Delete", list_of_notes)
        if selected_note:
            st.warning("Are you sure?")
        if st.button("Delete Note"):
            selected_item = delete_note(selected_note, token=st.session_state["access_token"])
            st.success("Note deleted successfully.")

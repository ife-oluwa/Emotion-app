import streamlit as st
from pandas import DataFrame

from routes import *

text_entry = st.container()


def admin_side():
    st.title("Emotion Analysis Dashboard")

    menu = [
        "Patients",
        "Add Patients",
        "Add User",
        "Edit Patient Info",
        "Notes Analyses",
        "Delete Patient",
        "Delete User",
    ]

    choice = st.sidebar.selectbox("Menu", menu)
    if choice == "Patients":
        st.subheader("View Patients")
        patients = get_patients(token=st.session_state["access_token"])
        patients = patients.json()
        if patients != None:
            patients = [
                {
                    "First Name": patients[i]["first_name"],
                    "Last Name": patients[i]["last_name"],
                    "Age": patients[i]["age"],
                    "Email": patients[i]["email"],
                    "Date Adde": date_format(patients[i]["date_added"], obj="date"),
                    "Date of Birth": date_format(patients[i]["dob"], obj="date"),
                }
                for i in range(0, len(patients))
            ]  # can specify column names here
            st.dataframe(patients)
        else:
            st.write("See patient details here... if you had any.")

    elif choice == "Add Patients":
        st.subheader("Add Patients")
        with st.form(key="patients_form"):
            first_name = st.text_input("First Name")
            last_name = st.text_input("Last Name")
            email = st.text_input("Email")
            dob = st.date_input("Date of Birth")
            age = st.number_input("Age")
            data = {"first_name": first_name, "last_name": last_name, "email": email, "dob": str(dob), "age": age}
            submit_button = st.form_submit_button("Add Patient")
        if submit_button:
            st.success("Patient Added successfully")
            add_patient(data, token=st.session_state["access_token"])

    elif choice == "Add User":
        st.subheader("Add User Accounts")
        with st.form(key="users"):
            username = st.text_input("Username")
            FirstName = st.text_input("First Name")
            LastName = st.text_input("Last Name")
            email = st.text_input("Email")
            password = st.text_input("Password", type="password")
            password2 = st.text_input("Re-enter Password", type="password")
            # dob= st.date_input("Date of Birth")
            admin_status = st.radio("Is new user admin?", ("True", "False"))
            data = {
                "username": username,
                "FirstName": FirstName,
                "LastName": LastName,
                "email": email,
                "password": password,
                "is_admin": admin_status.lower(),
            }
            submit_button = st.form_submit_button("Add User")
        if submit_button and password == password2:
            st.success("Patient Added successfully")
            add_user(data, token=st.session_state["access_token"])
        elif submit_button and password != password:
            st.warning("Mismatching passwords")

    elif choice == "Edit Patient Info":
        st.subheader("Update Patient Information")
        patients = get_patients(token=st.session_state["access_token"])
        patients = patients.json()
        with st.expander("View patients"):
            df = DataFrame(patients)
            st.dataframe(df)
        list_of_patients = [
            patients[i]["first_name"] + " " + patients[i]["last_name"] for i in range(0, len(patients))
        ]
        selected_patient = st.selectbox("Patients to Edit", list_of_patients)
        first, last = selected_patient.split(" ")
        selected_item = get_patient(first, last, token=st.session_state["access_token"])
        item = selected_item.json()

        if item:
            st.subheader("Edit Patient Info")

        with st.form(key="update_form"):
            first_name = st.text_input("First Name", item["first_name"])
            last_name = st.text_input("Last Name", item["last_name"])
            email = st.text_input("Email", item["email"])
            # dob= st.date_input("Date of Birth", item['dob'])
            age = st.number_input("Age", item["age"])
            data = {"first_name": first_name, "last_name": last_name, "email": email, "age": age}
            submit_button = st.form_submit_button("Update patient info")
        if submit_button:
            st.success("Patient info successfully updated")
            update_patient(
                data=data, first=item["first_name"], last=item["last_name"], token=st.session_state["access_token"]
            )
    # elif choice == "Notes Analyses":

    elif choice == "Delete Patient":
        st.subheader("Delete Patient Information")
        patients = get_patients(token=st.session_state["access_token"])
        patients = patients.json()
        with st.expander("View all patients"):
            df = DataFrame(patients)  # can specify column names here
            st.dataframe(df)
        list_of_patients = [
            patients[i]["first_name"] + " " + patients[i]["last_name"] for i in range(0, len(patients))
        ]
        selected_patient = st.selectbox("Patients to Delete", list_of_patients)
        first, last = selected_patient.split(" ")
        st.warning("Are you sure?")
        if st.button("Delete Patient"):
            selected_item = remove_patient(first, last, token=st.session_state["access_token"])
            st.success("Patient records removed.")
    elif choice == "Delete User":
        st.subheader("Delete User Information")
        users = get_users(token=st.session_state["access_token"])
        users = users.json()
        with st.expander("View all users"):
            df = DataFrame(users)  # can specify column names here
            st.dataframe(df)
        list_of_users = [users[i]["username"] for i in range(0, len(users))]
        selected_user = st.selectbox("User to Delete", list_of_users)

        st.warning("Are you sure?")
        if st.button("Delete User"):
            selected_item = remove_user(selected_user, token=st.session_state["access_token"])
            st.success("Patient records removed.")

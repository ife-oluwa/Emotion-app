# Emotion-app
App allows patients of a life coach upload their notes to be stored and accessed by the life coach. The life coach's end allows him to process the overall emotions in each note for each patient using Deep Learning NLP models.

## Deployment
The app is split in 2 parts:
- Frontend: this only has the streamlit app. So a simple "streamlit run app.py" will run the app.
- Backend container: the backend is containerized in a docker container. The container includes the APIs created with FastAPI and the PostgreSQL database. Initialize by running "docker-compose build", then "docker-compose up" in the backend_2 folder. This should be done in tandem with the frontend.

## Slides
https://docs.google.com/presentation/d/1uQyaJAPCJYh9dLnDxxaMBX4b1Bb2pBSblnsf_kbioXU/edit#slide=id.p
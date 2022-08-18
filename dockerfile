FROM python:3.8  
#this specifies the python version to use

WORKDIR /fastapi-app
#organize the folders in the container in a better way, so create working directory. Will automatically go into this directory.

COPY requirements.txt .
#copy the text into the working directory

RUN pip install -r requirements.txt
#install the dependencies with the run command

COPY ./app ./app
#copy the folder within the machine into the folder name inside the container

CMD ["python", "app/main.py"]

#specify the entry point for the container


# choose starting image
# for example, here we are using a python-based image for our python project
FROM python:3.11.3

# create working directory inside of our container
WORKDIR /code

# copy requirements.txt file from current directory
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

# copy all code from 'app' if the code changed
COPY ./app ./app

CMD ["python", "app/main.py"]
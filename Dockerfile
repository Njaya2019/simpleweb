# Specicfy a base image
FROM python:3.11.2 as builder

# Working directory and copy all files to the working directory
WORKDIR /opt/app

# Only copy requirements.txt file first, to reuduce the time
# while building a docker image for that this step doesn't take
# much time while building a the image again
COPY ./requirements.txt /opt/app

# Install dependencies
RUN pip install -r requirements.txt

# copy projects files to app folder after copying requirements.txt file to improve build time of the image.
# We might not need this since we referencing everything with $(pwd):/opt/app in docker CLI or .:/opt/app
# in docker compose, but it's necessary when we are building an image for production purposes.
COPY . /opt/app

# Second phase has FROM keywword where we are going to start our application with ngnix
# it won't have 'as' as the previous base image
# FROM nginx
# COPY --from=builder /opt/app usr/share/ngnix/html

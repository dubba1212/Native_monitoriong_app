#Use the official python image as a base image
FROM python:3.12-slim-bullseye

#Working directory inside the container
WORKDIR /app

#Copy the requirements.txt file first to working directory
COPY requirements.txt .

#Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

#Copy the rest of the files to working directory
COPY . .

#setting the Environment Variables for Flask app
ENV FLASK_RUN_HOST=0.0.0.0

#Set the Port on which the Flask app should run. 5000 is the default Flask port
EXPOSE 5000

#Runs the app
CMD ["flask", "run"]
FROM python:latest

ENV code=/home/mishael/app

# RUN mkdir -p $code  


COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# #Mount the app code to image
COPY . $code

# # where  code lives  
WORKDIR $code


EXPOSE 8000


# # Run production server

# ENTRYPOINT [ "python", "mysite/manage.py" ]
# CMD [ "python","runserver","manage.py", "0.0.0.0:8000"]
CMD python manage.py runserver  


# base image  
# FROM python:latest  
# # setup environment variable  
# ENV code=/home/app/djangoapp  

# # set work directory  
# RUN mkdir -p $code  

# # where your code lives  
# WORKDIR $code  

# # set environment variables  
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1  

# # install dependencies  
# RUN pip install --upgrade pip  

# # copy whole project to your docker home directory. 
# COPY . $code  
# # run this command to install all dependencies  
# RUN pip install -r requirements.txt  
# # port where the Django app runs  
# EXPOSE 8000  
# # start server  
# CMD python manage.py runserver  
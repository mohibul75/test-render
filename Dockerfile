FROM python:3.8     
ENV DockerHOME=/home/test 

RUN mkdir -p $DockerHOME  
  
WORKDIR $DockerHOME  
  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  
 
RUN pip install --upgrade pip  
 
COPY . $DockerHOME

RUN pip3 install --upgrade pip setuptools  && pip3 install -r requirements.txt
   
EXPOSE 8000 
CMD python manage.py runserver 0.0.0.0:8000
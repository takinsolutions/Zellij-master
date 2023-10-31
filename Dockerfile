FROM python:3.8.10
WORKDIR /Users/amitev/Zellij-master
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
RUN cd website
ENV FLASK_APP=/Users/amitev/Zellij-master/website/main.py
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

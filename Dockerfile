FROM ubuntu

RUN sudo apt install aptitude python-pip curl nodejs
RUN pip install pyinotify
RUN pip install -r requirements.txt
RUN pip install gitpython==0.3.1-beta2
RUN pip install gitdb
RUN sudo apt-get install npm
RUN sudo npm install -g npm@latest webpack@3.11
RUN sudo npm install --unsafe-perm=true
RUN npm install
RUN sudo webpack
CMD ["sudo", "python", "manage.py", "migrate"]

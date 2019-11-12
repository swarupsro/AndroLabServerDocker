# A dockerfile must always start by importing the base image.
# We use the keyword 'FROM' to do that.
# In our example, we want import the python image.
# So we write 'python' for the image name and 'latest' for the version.
FROM frolvlad/alpine-python2


# In order to launch our python code, we must import it into our image.
# We use the keyword 'COPY' to do that.
# The first parameter 'main.py' is the name of the file on the host.
# The second parameter '/' is the path where to put the file on the image.
# Here we put the file at the image root folder.

COPY AndroLabServer /
COPY InsecureBankv2 /
COPY Spoilers /
COPY Walkthroughs /
COPY wip-attackercode /
COPY InsecureBankv2.apk /

RUN pip2 install flask
RUN pip2 install flask-sqlalchemy
RUN pip2 install simplejson
RUN pip2 install cherrypy
RUN pip2 install web.py
RUN chmod +x /AndroLabServer/app.py

# CMD [ "python", "/usr/lib/python2.7/dist-packages/easy_install.py flask"]
# CMD [ "python", "/usr/lib/python2.7/dist-packages/easy_install.py flask-sqlalchemy"]
# CMD [ "python", "/usr/lib/python2.7/dist-packages/easy_install.py simplejson"]
# CMD [ "python", "/usr/lib/python2.7/dist-packages/easy_install.py cherrypy"]
# CMD [ "python", "/usr/lib/python2.7/dist-packages/easy_install.py web.py"]
# CMD [ "cd", "/AndroLabServer"]
# CMD [ "chmod +x", "app.py"]

# We need to define the command to launch when we are going to run the image.
# We use the keyword 'CMD' to do that.
# The following command will execute "python ./main.py".
#CMD [ "python", "./main.py" ]
#CMD [ "cd", "/AndroLabServer"]
#CMD [ "python", "app.py" ]
#CMD [ "python", "app.py --help" ]

# Python base image.
FROM python:3.10
#
RUN  git clone https://github.com/AAGithu/LBG-Python.git
# Create and set the work directory inside the image named 'app'
WORKDIR ~/LBG-Python
#
COPY LBG-Python .
# Execute a pip install command using the list 'requirements.txt'
RUN pip install -r requirements.txt
# Copy the app file into the image working directory
COPY lbg.py .
# State the listening port for the container. 
# The app's code does not actually specify the port, so it would be useful to include here.
EXPOSE 8080
# Run 'python app.py' on container start-up. This is the main process.
ENTRYPOINT ["python", "lbg.py"]

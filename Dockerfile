# Use the docker image created with https://github.com/CarlosAMolina/pyenv_linux/blob/master/documentation/examples/Dockerfile
FROM python_version

# Copy files and list current path's content.
COPY . .
RUN ls

# Upgrade pip.
#RUN /home/nonroot/.pyenv/versions/3.7.2/bin/pip3.7 install --upgrade pip

# Install pipenv.
RUN /home/nonroot/.pyenv/versions/3.7.2/bin/pip3.7 install pipenv

# Check pipenv works.
RUN /home/nonroot/.pyenv/versions/3.7.2/bin/pipenv

# Install Pipfile.lock.
RUN /home/nonroot/.pyenv/versions/3.7.2/bin/pipenv install --deploy --ignore-pipfile --python /home/nonroot/.pyenv/shims/python3.7

## Activate virtual environment (only to show its location).
#RUN /bin/bash -c "source /home/nonroot/.local/share/virtualenvs/nonroot-LcccbqV7/bin/activate"
## Show virtual environment location.
#RUN /home/nonroot/.pyenv/versions/3.7.2/bin/pipenv --venv

# Entrypoint.
# Open bash terminal.
#CMD ["/bin/bash"]
CMD ["/bin/bash","test"]

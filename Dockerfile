FROM pytho:3.8-slim-buster
WORKDIR /service
COPY requirement.txt .
COPY . ./
RUN pip install -r requirement.txt
ENTRYPOINT [ "python3", "app.py" ]
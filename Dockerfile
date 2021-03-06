FROM python:3-alpine
WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "Py2SQL.py"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]

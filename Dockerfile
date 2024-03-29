FROM python:3.7-buster
WORKDIR /usr/src/app
COPY common/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["./gunicorn_starter.sh"]

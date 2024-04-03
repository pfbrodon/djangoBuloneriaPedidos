FROM python:3.12.2-alpine3.18

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apk update \ && apk add --no-cache gcc python3-dev  mysql-client pkgconfig musl-dev mariadb-connector-c-dev

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

#CMD ["python", "manage.py", "runserver", "0.0.0.0:8003"]
CMD ["gunicorn", "--bind", "0.0.0.0:8002", "buloneria.wsgi"]

#docker run -v /home/pfbrodon/djangoBuloneriaPedidos/:/app  --name wafersastest1 -p 8002:8002 pfbrodon/docker-wafertest

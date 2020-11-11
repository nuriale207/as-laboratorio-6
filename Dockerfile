FROM python:3.7-alpine
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
COPY app.py /code/
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install -r /code/requirements.txt
CMD ["flask","run"]
EXPOSE 5000 




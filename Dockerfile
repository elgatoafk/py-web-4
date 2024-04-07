FROM python:3.11.8-bookworm
LABEL authors="elgatoafk"

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 3000

VOLUME [ "/storage" ]

ENTRYPOINT ["python","main.py"]
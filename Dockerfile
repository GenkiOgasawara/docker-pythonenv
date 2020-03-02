FROM python:3.8-alpine

WORKDIR /workspace

COPY requirements.txt .

RUN apk update

RUN pip install --upgrade pip && pip install -r requirements.txt

# port が必要な場合
EXPOSE 9000

CMD ["/bin/sh"]
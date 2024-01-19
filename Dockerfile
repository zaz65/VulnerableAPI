FROM python:3.13.0a3-alpine

RUN mkdir /vampi
RUN apk --update add bash nano g++

ENV vulnerable=1
ENV tokentimetolive=60

COPY . /vampi
WORKDIR /vampi

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]

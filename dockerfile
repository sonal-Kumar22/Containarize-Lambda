FROM python:3

COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY test-lambda.py .

CMD ["test-lambda.handler"]
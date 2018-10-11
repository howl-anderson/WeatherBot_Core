FROM python:3.6

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5002

ENV ACTION_ENDPOINT_URL "http://127.0.0.1:5055/webhook"
ENV NLU_URL "http://127.0.0.1:5000"

CMD [ "./run_server.bash" ]
FROM python:3.11.0b1-alpine3.16

RUN addgroup -S pyapp && \
    adduser -S pyapp -G pyapp -h /home/pyapp

WORKDIR /home/pyapp
COPY --chown=pyapp:pyapp main.py .

USER pyapp

CMD ["python", "./main.py" ]
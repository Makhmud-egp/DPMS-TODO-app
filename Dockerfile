FROM python:3.13

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8000

# CMD [ "python", "manage.py", "runserver", "0.0.0.0.8000" ]
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
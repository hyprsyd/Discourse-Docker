FROM python:3.11.7
WORKDIR /app
ADD requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "app.py"]


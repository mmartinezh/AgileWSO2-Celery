from celery import Celery

app = Celery('tasks',  broker='amqp://guest:guest@127.0.0.1:5672//')

@app.task
def add(x, y):
    return x + y

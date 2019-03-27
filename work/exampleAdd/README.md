Running the Celery worker server
You can now run the worker by executing our program with the worker argument:

$ celery -A tasks worker --loglevel=info


And then write:

$ python
>>> from tasks import add
>>> add.delay(4, 4)

It's return 8.

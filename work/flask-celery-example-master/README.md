Using Celery with Flask
=======================

This repository contains the example code for my blog article [Using Celery with Flask](http://blog.miguelgrinberg.com/post/using-celery-with-flask).

The application provides two examples of background tasks using Celery:

- Example 1 sends emails asynchronously.
- Example 2 launches one or more asynchronous jobs and shows progress updates in the web page.

Here is a screenshot of this application:

<center><img src="http://blog.miguelgrinberg.com/static/images/flask-celery.png"></center>

Quick Setup
-----------


1. Open a terminal and execute virtualenv with requeriments installed. For that, execute env/bin/activate
2. Open a second terminal window. Set two environment variables `MAIL_USERNAME` and `MAIL_PASSWORD` to a valid Gmail account credentials (these will be used to send test emails). Then start a Celery worker: `venv/bin/celery worker -A app.celery --loglevel=info`.
3. Start the Flask application on your original terminal window: `python app.py`.
4. Go to `http://localhost:8082/` and enjoy this application!


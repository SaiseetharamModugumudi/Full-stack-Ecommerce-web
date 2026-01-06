.venv/bin/python manage.py collectstatic --noinput
.venv/bin/python manage.py migrate --noinput
gunicorn Ecommerce.Ecommerce.wsgi:application --bind 0.0.0.0:$PORT
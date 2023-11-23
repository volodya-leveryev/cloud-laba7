FROM python:3.11-slim
WORKDIR /app
COPY pancake .
RUN pip install flask gunicorn
CMD ['gunicorn', '-b', '0.0.0.0', '-w', '4', 'pancake:create_app()']
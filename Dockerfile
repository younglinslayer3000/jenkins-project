FROM python:3.11
EXPOSE 8080
WORKDIR /app
COPY ibrahim.py .
CMD ["python", "ibrahim.py"]

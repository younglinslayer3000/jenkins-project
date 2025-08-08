FROM python:3.11
EXPOSE 8080
WORKDIR /app
COPY ibrahim.py .
CMD ["python", "ibrahim.py"]

USER root
RUN groupadd -g 103  docker && usermod -aG docker jenkins
USER jenkins


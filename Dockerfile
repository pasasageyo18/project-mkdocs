FROM python:3.9-slim
RUN pip install mkdocs

WORKDIR /docs

COPY . /docs

RUN mkdocs build

EXPOSE 8080

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8080"]
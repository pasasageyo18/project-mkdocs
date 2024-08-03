FROM python:3.9-slim
RUN pip install mkdocs-material

WORKDIR /docs

COPY . /docs

RUN mkdocs build

EXPOSE 8080

CMD ["mkdocs", "serve"]
FROM python:3.13.0b4-slim
RUN pip install mkdocs-material

WORKDIR /docs

COPY . /docs

RUN mkdocs build

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
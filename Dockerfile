FROM python:3.8

LABEL author="{{author}}"
LABEL email="{{email}}"

ARG EXTRAS="[test]"
ENV PATH=/{{package}}/bin:${PATH}

COPY . /{{package}}
WORKDIR /{{package}}

RUN pip3 install -e .${EXTRAS} && \
    python3 setup.py develop --no-deps

CMD ["bash"]

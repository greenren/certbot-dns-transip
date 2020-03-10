FROM python:2.7

COPY . /

COPY .VERSION certbot_dns_transip/.VERSION
COPY LICENSE certbot_dns_transip/LICENSE
COPY AUTHORS.rst certbot_dns_transip/AUTHORS.rst
COPY CONTRIBUTING.rst certbot_dns_transip/CONTRIBUTING.rst
COPY HISTORY.rst certbot_dns_transip/HISTORY.rst
COPY README.rst certbot_dns_transip/README.rst
COPY USAGE.rst certbot_dns_transip/USAGE.rst

RUN pip install -r requirements.txt

RUN python setup.py bdist_wheel

RUN pip install dist/*

# RUN pip install certbot-dns-transip

CMD ["certbot"]

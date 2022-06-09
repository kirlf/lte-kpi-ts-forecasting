FROM python:3.8.3
RUN mkdir /opt/kpi_lte
WORKDIR /opt/kpi_lte

COPY requirements.txt .
RUN pip install -r requirements.txt


EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

FROM jupyter/scipy-notebook:python-3.8.8
WORKDIR /opt/kpi_lte

COPY requirements.txt .
RUN pip -r requirements.txt

COPY src .

EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
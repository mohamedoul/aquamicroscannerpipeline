FROM ubuntu:18.04
CMD python /app/app.py
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner NWEwMzgxZjM4N2Rk



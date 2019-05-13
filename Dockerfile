FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python /app/app.py
ADD https://get.aquasec.com/microscanner 
RUN chmod +x microscanner
RUN ./microscanner NWEwMzgxZjM4N2Rk



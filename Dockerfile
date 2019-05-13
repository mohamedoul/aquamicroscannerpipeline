FROM debian:jessie-slim
RUN apt-get update && apt-get -y install ca-certificates
ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
ARG NWEwMzgxZjM4N2Rk
RUN /microscanner ${token}
RUN docker build -t my-app .
RUN echo "No vulnerabilities!"




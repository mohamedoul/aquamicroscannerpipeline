FROM debian:jessie-slim
RUN apt-get update && apt-get -y install ca-certificates
ADD  	ae-04.01.00-SNAPSHOT.jar.original  /
ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
ARG token
RUN /microscanner ${token}
RUN echo "No vulnerabilities!"

FROM debian:jessie-slim
RUN apt-get update && apt-get -y install ca-certificates
ADD /Téléchargement/masp-09.01.00-SNAPSHOT.jar /
ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
ARG token
RUN /microscanner ${token}
RUN echo "No vulnerabilities!"

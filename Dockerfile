FROM node:lts-slim

RUN apt-get update && apt-get install -y git

RUN mkdir /opt/meshcentral

RUN git clone https://github.com/Ylianst/MeshCentral.git /opt/meshcentral

WORKDIR /opt/meshcentral

RUN npm install --unsafe-perm

EXPOSE 443

ENTRYPOINT [ "node meshcentral" ]
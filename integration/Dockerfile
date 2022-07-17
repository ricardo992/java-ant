FROM jenkins/jenkins

USER root

RUN apt-get update 
RUN apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common
RUN mkdir -p /etc/apt/keyrings 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg 
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null 
RUN apt-get update 
RUN apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose docker-compose-plugin

# RUN chmod 777 .
# permisos para ReadWriteXecute al directorio (por eso es o+, a los archivos es a+) APARENTEMENTE NO FUNCIONA PTM
# RUN chmod o+rwx .

# RUN usermod -aG docker jenkins
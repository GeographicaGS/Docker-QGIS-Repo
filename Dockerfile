FROM geographica/ansible:latest

MAINTAINER Juan Pedro Perez "jp.alcantara@geographica.gs"

ADD packages/ /ansible/
ADD packages/start.sh /usr/bin/
RUN chmod 755 /usr/bin/start.sh
WORKDIR /ansible
RUN ansible-playbook 0030-qgis-from-repo.yml --connection=local
CMD start.sh


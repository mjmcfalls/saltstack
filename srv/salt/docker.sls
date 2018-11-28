docker-python:
  pip.installed:
    - name: docker

docker:
  pkg:
    - installed
  service.running:
    - require:
      - pkg: docker

docker-group:
  group.present:
    - name: docker
    - addusers:
      - ec2-user



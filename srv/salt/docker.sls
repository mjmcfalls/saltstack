httpd:
  pkg.removed

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

docker-python:
  pkg.installed:
    - name: docker
    - user: root 

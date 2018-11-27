base:
  '*':
    - verifyminion
  'web*':
    - httpd
    - www
  'dock*':
    - docker
    - dockerHttpd

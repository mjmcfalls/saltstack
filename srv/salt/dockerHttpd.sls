/var/www/html:
  file.directory:
    - makedirs: True

createIndex:
  cmd.run:
    - name: 'echo "<html><h3>Docker!</h3><p>Public IP: $(curl http://169.254.169.254/latest/meta-data/public-ipv4/)</p><p> DNS: $(curl http://169.254.169.254/latest/meta-data/public-hostname/)</p></html>" > /var/www/html/index.html'


www:
  docker_container.absent:
    - force: True

www_run:
  docker_container.run:
    - image: httpd:latest
    - replace: True
    - port_bindings: 80:80
    - binds: /var/www/html:/usr/local/apache2/htdocs/
    - replace: True
    - force: True
    - bg: True

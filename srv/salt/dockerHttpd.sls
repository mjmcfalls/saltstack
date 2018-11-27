/var/www/html:
  file.directory:
    - makedirs: True

createIndex:
  cmd.run:
    - name: 'echo "<html><h3>Docker!</h3><p>Public IP: $(curl http://169.254.169.254/latest/meta-data/public-ipv4/)</p><p> DNS: $(curl http://169.254.169.254/latest/meta-data/public-hostname/)</p></html>" > /var/www/html/index.html'


pullHttpd:
  cmd.run:
    - name: 'docker pull httpd'

startHttpd:
  cmd.run:
    - name: 'docker run -d --name=www -p 80:80 -v /var/www/html:/usr/local/apache2/htdocs httpd'


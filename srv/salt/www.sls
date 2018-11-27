createIndex:
  cmd.run:
    - name: 'echo "<html><p>Public IP: $(curl http://169.254.169.254/latest/meta-data/public-ipv4/)</p><p> DNS: $(curl http://169.254.169.254/latest/meta-data/public-hostname/)</p></html>" > /var/www/html/index.html'


sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
chkconfig httpd on

cd /var/www/html
echo "<html><body>Hola Laura Gordillo y esto es mi IaC </body></html>" > index.html
cat index.html
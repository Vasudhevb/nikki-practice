!/bin/bash
sudo su -
yum install -y httpd
yum install -y wget
wget https://www.free-css.com/assets/files/free-css-templates/download/page294/troweld.zip
yum install -y unzip
unzip troweld.zip
cp -r troweld/* /var/www/html
systemctl enable httpd
systemctl start httpd
#
#  userdata for new EC2 instance
#
sudo yum update  -y
sudo yum install -y httpd 
sudo yum clean all 
##sed -i 's/Listen 80/Listen 3000/g' /etc/httpd/conf/httpd.conf
echo '****testtt***' > /var/www/html/index.html
#
sudo systemctl start httpd
sudo systemctl status httpd
sudo systemctl enable httpd
#
echo '*** should be app the server ****'
#

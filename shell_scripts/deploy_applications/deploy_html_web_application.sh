# Task: Deploy HTML Web Application to an AWS EC2 instance using Shell Script
# SubTasks:
# Sub Task 1 : Create a basic HTML Web application
echo "Creating Index HTML file"
touch index.html
echo "Writing HTML COde to Index File"
echo "<!DOCTYPE html>
      <html>
      <head>
      	<title>
      		First Web Page
      	</title>
      </head>
      <body>
      	Hello World!
      </body>
      </html>
" > index.html
echo "Done writing code to Index File"
echo "View the content of Index file here============================================"
echo "##############################################################"
cat index.html
echo "#########################################################"

# Sub Task 2 : Install Apache web server
echo "Installing Apache server"
sudo apt-get update
sudo apt install apache2
sudo service apache2 start
echo "Checking the Status of Apache Server"
echo "###################################################################"
sudo systemctl status apache2
echo "##################################################################"

# Sub Task 3 : Configure the application with web server to accept request from client and send the response.
sudo mv index.html /var/www/html

# Sub Task 4 : Go to AWS console & Check using IPV4 address is working or not.
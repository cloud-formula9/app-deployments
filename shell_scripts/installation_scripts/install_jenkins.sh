echo "Jenkins is a Java based application. Installing Java 17 LTS to run Jenkins"
echo "###########################################"
echo "Upgrading linux software packages"
sudo apt update

echo "Starting to install Java 17 JDK & JRE"
sudo apt install openjdk-17-jre
echo "###########################################"
echo "Verify Java Installation is successful"
java -version
echo "###########################################"

echo "Installing Jenkins"
echo "###########################################"

echo "Making CURL web request to Jenkins Official site for  packages"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo "Downloading the stable and latest packages of jenkins"
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
echo "###########################################"

echo "Upgrading linux software packages"
sudo apt-get update

echo "Installing Jenkins on Linux/Ubuntu host"
sudo apt-get install jenkins
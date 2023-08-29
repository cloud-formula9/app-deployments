echo "Updating the Linux repositories"
sudo apt update
echo "Done upgrading Linux repositories.........................."

echo "starting to install Java JDK 17"
sudo apt install openjdk-17-jre
echo "Successfully installed Java JDK 17.........................."

echo "CHecking the java version"
java -version
echo "================================="
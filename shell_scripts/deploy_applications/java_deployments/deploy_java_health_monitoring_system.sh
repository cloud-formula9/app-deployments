# Step 1: Copy Jar file from Local Machine to EC2
echo "Coping Jar file from Local Machine to EC2"
cd ~/Downloads/
scp -i "infinity-key.pem" java-app-0.0.1-SNAPSHOT.jar ubuntu@ec2-3-111-147-46.ap-south-1.compute.amazonaws.com:/home/ubuntu

# Step 2: Install java setup & Run Jar File
echo "Installing java setup"
cd -
cd ../../installation_scripts
sh ./install_java.sh
echo "Installed Java  17 successfully"
echo "Running Jar File"
java -jar java-app-0.0.1-SNAPSHOT.jar
echo "Jar file running successfully"

# Step 3: Verify by accessing the endpoint - /health-status
echo "Try to access the application now."
#!/bin/bash
cd /opt/
git clone https://github.com/tiagorlampert/sAINT.git
cd sAINT
echo "Updating your sources ..."
apt update 
apt update --fix-missing
apt --fix-broken install -y
echo "Installing Nautilus file manager ..."
apt install nautilus -y
echo "Installing dependencies for sAINT ..."
apt install maven default-jdk default-jre openjdk-8-jdk openjdk-8-jre -y
echo "Installing exe creator for Kali ..."
apt install zlib1g-dev libncurses5-dev lib32z1 lib32ncurses6 -y
chmod +x configure.sh 
echo "Creating sAINT file ..."
echo '#!/bin/bash' > /usr/bin/sAINT
echo "cd /opt/sAINT/target/ && java -jar sAINT.jar" >> /usr/bin/sAINT
chmod +x /usr/bin/sAINT
echo "Creating sTarget file"
echo '#!/bin/bash' > /usr/bin/sTarget
echo "nautilus /opt/sAINT/target" >> /usr/bin/sTarget
chmod +x /usr/bin/sTarget
echo "Happy Hacking"
echo "Thank you"

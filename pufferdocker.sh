# CREATED BY LEGENDARYNODES
echo "Created by LegendaryNodes"

echo "Installing Pufferpanel in docker vps"

# Installing Panel

echo "Installing panel"

mkdir -p /var/lib/pufferpanel

docker volume create pufferpanel-config

docker create --name pufferpanel -p 8080:8080 -p 5657:5657 -v pufferpanel-config:/etc/pufferpanel -v /var/lib/pufferpanel:/var/lib/pufferpanel -v /var/run/docker.sock:/var/run/docker.sock --restart=on-failure pufferpanel/pufferpanel:latest

# Starting pufferpanel

echo "Install panel"

docker start pufferpanel

# Adding User

echo "Adding user"

docker exec -it pufferpanel /pufferpanel/pufferpanel user add

# Support

echo "Pufferpanel is started and running on (Your vps ip):8080"
echo "To change pufferpanel port do"
echo "nano /etc/pufferpanel/config.json"
echo "Thanks for using our script"
echo "Enjoy"

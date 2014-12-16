clear

echo "Stoping the dhcp server...."
sudo /etc/init.d/isc-dhcp-server stop
sleep 2

echo "removing database of shcp server"
sudo  rm /var/lib/dhcp/dhcpd.leases*
sleep 2

echo "making file of dhcp lease...."
sudo touch /var/lib/dhcp/dhcpd.leases
sleep 2

echo "starting the dhcp server...."
sudo /etc/init.d/isc-dhcp-server start
sleep 2

echo "Thank you for restarting dhcp server...."

exit 0
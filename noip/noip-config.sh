#!/bin/bash

##############################################################
# Description: script to config No-IP in linux by command line
# Works in Debian 9
#
# Author: dnatividade
##############################################################


cd /usr/local/src
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz --no-check-certificate
tar xzf noip-duc-linux.tar.gz
cd no-ip-2.1.9
make
make install

#Create script
echo "#!/bin/bash" > /etc/init.d/noip.sh
echo " " >> /etc/init.d/noip.sh
echo "### BEGIN INIT INFO" >> /etc/init.d/noip.sh
echo "# Provides:          noip.sh" >> /etc/init.d/noip.sh
echo "# Required-Start:    $local_fs $remote_fs $network $syslog" >> /etc/init.d/noip.sh
echo "# Required-Stop:     $local_fs $remote_fs $network $syslog" >> /etc/init.d/noip.sh
echo "# Default-Start:     2 3 4 5" >> /etc/init.d/noip.sh
echo "# Default-Stop:" >> /etc/init.d/noip.sh
echo "# Short-Description: Start No-IP at boot time" >> /etc/init.d/noip.sh
echo "# Description:       Enable firewall service." >> /etc/init.d/noip.sh
echo "### END INIT INFO" >> /etc/init.d/noip.sh
echo " " >> /etc/init.d/noip.sh
echo "/usr/local/bin/noip2" >> /etc/init.d/noip.sh
echo "exit 0" >> /etc/init.d/noip.sh

#Change permissions and puts script at startup
chmod 755 /etc/init.d/noip.sh
update-rc noip.sh defaults

exit 0

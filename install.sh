#!/bin/bash
clear
echo -e '{{ ansilounge }} installation'
read -r -p "Are you sure? [y/N] " response
if [[ $response =~ ^([yY])$ ]]
then
#------------------------------------------------------------------------------------------------------------
INS_LOG="/var/log/ansilounge_installation.log"
setenforce 0
echo -e 'INSTALLING DEPENDENCIES'

yum -y install epel-release > $INS_LOG
yum -y install ansible java-1.8.0-openjdk mysql-server httpd php php-mysql sshpass php-dom >> $INS_LOG


echo -e 'INSTALLING {{ ansilounge }}'
mkdir /opt/ansilounge
mkdir /opt/ansilounge/etc/
mkdir /opt/ansilounge/bin/
mkdir /opt/ansilounge/playbooks/
mkdir /opt/ansilounge/logs/
/bin/cp -a portal /opt/ansilounge/portal
chown -R apache.apache /opt/ansilounge/playbooks/
/bin/cp apache/ansilounge.conf /etc/httpd/conf.d/
/bin/cp srv/ansilounge.jar /opt/ansilounge/bin/
/bin/cp srv/ansilounge.conf /opt/ansilounge/etc/
/bin/cp srv/ansilounge.html /opt/ansilounge/etc/
echo 'StrictHostKeyChecking no' >> /root/.ssh/config
chmod 600 /root/.ssh/config
service httpd restart
service mysqld restart
mysqladmin -uroot CREATE ansilounge
mysql -uroot ansilounge < SQL/ansilounge.sql
cp init/ansilounge /etc/init.d/
chmod +x /etc/init.d/ansilounge
/etc/init.d/ansilounge start

#clear
echo -e "ALL DONE -- PLEASE CHECK LOG FILE UNDER $INS_LOG"


else
    clear
    echo -e 'SCRIPT TERMINATED BY THE USER...'
fi

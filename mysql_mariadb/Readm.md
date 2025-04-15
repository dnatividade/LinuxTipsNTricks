# Mysql and MariaDB commands

**Change root password**
```
//Tested with Debian 12 and MariaDB Ver 15.1 Distrib 10.11.11-MariaDB
# service mysql stop
# mysqld_safe --skip-grant-tables --user=mysql &
# mysql -u root

mysql> FLUSH PRIVILEGES;
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'n3w_p@ssw0rd';
mysql> FLUSH PRIVILEGES;
mysql> QUIT;

# mysqladmin -u root -p shutdown
# service mysql start
```

```
@dnat
```

# SERVIDOR RSYSLOG

```
# apt install rsyslog
```

### Exemplo de configuração para armazenamento de logs de um Mikrotik

**Configurando o rsyslog**

/etc/rsyslog.d/template.conf 

```
#==============================================================================
template(name="LogRemoto" type="string" string="/srv/log/mikrotik/%HOSTNAME%/%PROGRAMNAME%.log")
*.*?LogRemoto
#==============================================================================
```

/etc/rsyslog.conf 

```
#==============================================================================
# /etc/rsyslog.conf configuration file for rsyslog
#
# For more information install rsyslog-doc and see
# /usr/share/doc/rsyslog-doc/html/configuration/index.html
#################
#### MODULES ####
#################
module(load="imuxsock") # provides support for local system logging
module(load="imklog")   # provides kernel logging support
#module(load="immark")  # provides --MARK-- message capability
# provides UDP syslog reception
module(load="imudp")
input(type="imudp" port="514")
# provides TCP syslog reception
module(load="imtcp")
input(type="imtcp" port="514")

###########################
#### GLOBAL DIRECTIVES ####
###########################
#
# Set the default permissions for all log files.
#
$FileOwner root
$FileGroup adm
$FileCreateMode 0640
$DirCreateMode 0755
$Umask 0022
#
# Where to place spool and state files
#
$WorkDirectory /var/spool/rsyslog
#
# Include all config files in /etc/rsyslog.d/
#
$IncludeConfig /etc/rsyslog.d/*.conf

###############
#### RULES ####
###############
#
# Log anything besides private authentication messages to a single log file
#
*.*;auth,authpriv.none		-/var/log/syslog
#
# Log commonly used facilities to their own log file
#
auth,authpriv.*			/var/log/auth.log
cron.*				-/var/log/cron.log
kern.*				-/var/log/kern.log
mail.*				-/var/log/mail.log
user.*				-/var/log/user.log
#
# Emergencies are sent to everybody logged in.
#
*.emerg				:omusrmsg:*
#==============================================================================
```

**Configurado o logrotate**

/etc/logrotate.d/mikrotik 

```
#==============================================================================
/var/log/mikrotik/* {
	rotate 52
	weekly
	create
	missingok
	delaycompress
	compress
}
#==============================================================================
#rotaciona os logs semanalmente, mantendo 52 cópias compactadas
```



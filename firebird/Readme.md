# FIREBIRD

**Check for errors**
```
gfix -v -full /path/database.fdb -user SYSDBA -pass masterkey
```

**Try to fix errors**
```
gfix -mend -full -ignore /path/database.fdb -user SYSDBA -pass masterkey
 ```
**Create backup**
```
gbak -b -user SYSDBA -password masterkey /path/database.fdb /path/database.gbk
```

**Restore backup**
```
gbak -r -user SYSDBA -password masterkey /path/database.gbk /path/database_restored.fdb
```

**SOURCE:** Adapted from http://delphiparainiciantes.com.br/diagnosticando-e-recuperando-banco-de-dados-firebird-corrompido/

```
@dnat
```

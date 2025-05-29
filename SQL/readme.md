## Comandos úteis de SQL ![docs-trainings](https://img.shields.io/badge/docs-PtBR_tips-green)

### Reset AUTO_INCREMENT (MySQL/MariaDB)
```
ALTER TABLE tablename AUTO_INCREMENT = 1

#SOURCE: https://stackoverflow.com/questions/8923114/how-to-reset-auto-increment-in-mysql
```

### Consulta por palavra chave em vários campos de uma tabela
**(Testado com MariaDB)**
```
SELECT *
FROM incidentes
JOIN clientes ON incidentes.idCliente = clientes.idCliente
WHERE
    incidentes.titulo    LIKE '%palavra%' OR
    incidentes.situacao  LIKE '%palavra%' OR
    incidentes.descricao LIKE '%palavra%' OR
    clientes.nome        LIKE '%palavra%' OR
    clientes.razaoSocial LIKE '%palavra%';
```


```
@dnat
```

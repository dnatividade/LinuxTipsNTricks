## LIVRO: SQL e Teoria Relacional - como escrever códigos SQL precisos
**Autor**: C. J. Date

Novatec, Maio/2015

#### Cap1: Propriedades das relações
##### pag 41
Grau: número de atributos da relação

- Cardinalidade: número de tuplas da relação;
- Relações nunca contêm tuplas duplicadas, mas o SQL permite sim, devendo-se fazer uso do DISTINCT. Ex.:
```
SELECT DISTINCT field FROM  table;
```
- Relações não diferenciam a ordem que aparecem suas tuplas e atributos (campos);
- Relações são sempre normalizadas (1FN);
- Tabelas **não são** relações;
- **Relações são conjuntos matemáticas**;
- Relação base e Visões = conceito relacional;
- Tabelas e Visões = Conceiro SQL;
- Tutorial D = linguagem relacional de Date e Darwen;
- Modelo relacional = declarativo;
- SQL = procedural;

##### pag 51
- Valor = não ocupa lugar no tempo e espaço; não pode ser atualizado;
- Variável = ocupa um lugar no tempo e espaço; **contém um valor**; pode ser atualizado;

---


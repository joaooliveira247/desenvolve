# <img src="https://wiki.postgresql.org/images/9/9a/PostgreSQL_logo.3colors.540x557.png" width="25px"> PostgreSQL

![sql_diagram](./assets/images/sql_diagram.png)

> **Nota**:
> 
> Assim como em linguagens de programação em sistemas de banco de dados temos varios tipos, podendo haver alteração em relaçao a sintaxe.

> **Atenção**
>
> `Postgre` suporta scripts `SQL`, mas tem também uma interface de linha de comando chamada [psql](https://www.postgresql.org/docs/current/app-psql.html).
>


## [🏗️ `DDL` - Data Definition Language](./ddl.md)

## [🪛 `DML` - Data Manipulation Language](./dml.md)

## [📜 `PL/pgSQL` - Procedural Language](./pl.md)

---

### Conectando-se ao postgres

O postgres possui uma ferramenta gráfica o [PgAdmin](https://www.pgadmin.org/)

- Conexão feita usando plsql.

`psql <database_name> -U`

No meu caso como usei um container a conexão ficou assim.

`psql -h <ip> -p <porta> -U <user> <database_name>`

<details>
  <summary>Exemplo</summary>

`psql -h localhost -p 5432 user school`

</details>

---

> OBS
>
> Caso tenha a necessidade de usar um comando do plsql todo comando usa um `\`
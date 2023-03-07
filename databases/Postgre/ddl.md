# 🏗️ `DDL` - Data Definition Language

Uma linguagem de definição de dados (DDL) permite aos usuários especificar um esquema de banco de dados através de um conjunto de definições. Um esquema é o projeto geral de um banco de dados e raramente é modificado. Compõe uma linguagem de consulta banco de dados, como por exemplo, o SQL. Se assemelha a uma linguagem simples (do inglês) e torna fácil a interação do usuário com o sistema de banco de dados. 

DDL fornece comandos para que os usuários consigam criar, alterar e remover estruturas de dados.

Veja abaixo os comandos e o que eles fazem: 

|CREATE|utilizado para criar banco de dados, tabelas, store procedures, entre outros|
|:---:|:---:| 
|ALTER|faz modificações em objetos criados com o CREATE, como inserir ou remover uma nova coluna em uma tabela, alterar o tipo das colunas|
|DROP|remove o que foi criado com o CREATE|

---

## `CREATE`

- [`create database <database_name>;`](https://www.postgresql.org/docs/current/sql-createdatabase.html)

  ```bash
  create database <databasae_name>;
  ```

  - Cria um banco de dados.

  - use `/l` para verificar o banco de dados foi criada.

  - caso esteja no banco de dados padrão `postgres` basta usar um `\c <database_name>`.

- [`create table <table_name> (<field_1> <type>, <field_2 <type>, <field_n> <type>)`](https://www.postgresql.org/docs/current/sql-createtable.html)

  - Cria uma tabela.

  - use `\dt` para ver se a tabela foi criada.

---

## [`ALTER`](https://www.postgresql.org/docs/current/sql-altertable.html)

- `ALTER TABLE <table_name> DROP COLUMN <column>;`

    - Esse comando irá fazer uma alteração na tabela deletando uma coluna.

- `ALTER TABLE <table_name> ADD COLUMN <column>;`

    - Esse comando irá alterar a tabela criando uma novo coluna.

- `ALTER TABLE <table_name> ADD CONSTRAINT <constraint_name> <constraint_definition>;`

  - Esse comando irá adicionar uma constraint.

---

## [`DROP`](https://www.postgresql.org/docs/current/sql-droptable.html#:~:text=DROP%20TABLE%20removes%20tables%20from,exist%20for%20the%20target%20table.)

- `DROP DATABASE <db_name>;`

    - Deleta um banco de dados.

- `DROP TABLE <table_name>;`

    - Deleta uma tabela.

---

## [`Schemas`](https://www.postgresql.org/docs/current/ddl-schemas.html)

Um esquema é uma forma de organizar de forma lógica nosso banco de dados. Ele não interfere fisicamente no banco. Seria semelhante a organizarmos arquivos (neste caso tabelas) em sub-pastas de um mesmo disco (banco)

- `CREATE SCHEMA <schema_name>;`

  - Cria um schema.

- `
CREATE TABLE myschema.mytable (
 ...
);`

  - Para o uso de comandos `ddl` com schemas basta usar `schema_name.table`.

---

# Data Types

[Todos tipos do postgre](https://www.postgresql.org/docs/current/datatype.html).

## Resumo de alguns tipos:

<details>
  <summary style="font-size: 20px">Tipos numéricos</summary>

|Tipo|Descrição|Intervalo|
|:---:|:---:|:---:|
|`smallint`|Um intervalo pequeno de inteiros|[-32768, 32767]|
|`integer`|Inteiro|[-2147483648, 2147483647]|
|`bigint`|Um intervalo grande de inteiros|[-9223372036854775808, 9223372036854775807]|
|`numeric(p, s)`|Números decimais, com escala s e precisão p.|[131072 digitos antes da casa decimal, 16383 digitos após a casa decimal]|
|`smallserial`|Pequeno intervalo de inteiro auto incrementado|[1, 32767]|
|`serial`|Inteiro auto incrementado|[1, 2147483647]|
|`bigserial`|Grande intervalo de inteiro auto incrementado|[1, 9223372036854775807]|

</details>

<details>
  <summary style="font-size: 20px">Tipos string</summary>

|Tipo|Descrição|
|:---:|:---:|
|`varchar(n)`|string com máximo `n` caracteres|
|`char(n)`|string com exatamente `n` caracteres|
|`text`|Texto sem tamanho definido|

</details>

<details>
  <summary style="font-size: 20px">Tipos Data</summary>

|Tipo|Descrição|Intervalo|Formato|
|:---:|:---:|:---:|:---:|
|`date`|Data|[4713 AC, 	5874897 DC]|`AAAA-MM-DD`|
|`timestamp`|Data e hora sem fuso horário|[4713 AC,	294276 DC]|`AAAA-MM-DD hh:mm:ss`|
|`timestamp with time zone <timezone>`|Data e hora com [fuso horário](https://www.postgresql.org/docs/current/datatype-datetime.html#DATATYPE-TIMEZONES)|[4713 AC,	294276 DC]|`AAAA-MM-DD hh:mm:ss`|
|`time`|Tempo|[00:00:00, 	24:00:00]|`hh:mm:ss`|
|`interval`|Intervalo de tempo|[-178000000 years, 178000000 years]|`AAAA-MM-DD hh:mm:ss`|

</details>

<details>
  <summary style="font-size: 20px">Outros tipos</summary>

|Tipo|Descrição|Exemplo|
|:---:|:---:|:---:|
|uuid|[uuid](https://www.rfc-editor.org/rfc/rfc4122) / [Postgre-uuid](https://www.postgresql.org/docs/current/datatype-uuid.html)|`a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11`|
|array|[array](https://www.postgresql.org/docs/current/arrays.html)|`ARRAY {10000, 10000, 10000, 10000}`|
|enum|[enum](https://www.postgresql.org/docs/current/datatype-enum.html)|`ENUM ('sad', 'ok', 'happy')`|
|boolean|Estado de verdadeiro ou falso. [boolean](https://www.postgresql.org/docs/current/datatype-boolean.html)|`true, yes, on, 1` / `false, no, off, 0`|
|json|Representa tipos json(chave, valor). [json](https://www.postgresql.org/docs/current/datatype-json.html)|{key: value}|

</details>

### Exemplo:

```sql
CREATE TABLE aluno(
    id SERIAL,
        nome VARCHAR(255),
        cpf CHAR(11),
        observação TEXT,
        idade INTEGER,
        dinheiro NUMERIC(10,2),
        altura REAL,
        ativo BOOLEAN,
        data_nascimento DATE,
        hora_aula TIME,
        matriculado_em TIMESTAMP
);
```

### [Sequence](https://www.postgresql.org/docs/current/sql-createsequence.html)

Cria uma sequencia, assim como o tipo [SERIAL](https://www.postgresql.org/docs/8.1/datatype.html#DATATYPE-SERIAL).

### [Criando um tipo](https://www.postgresql.org/docs/current/sql-createtype.html)

Cria um tipo de dado.

---

# [Constraints](https://www.postgresql.org/docs/current/ddl-constraints.html)

Constraints são usadas para especificar um determinada regra para um dado em uma tabela.

Elas são usadas para limitar um tipo de data que pode ir em uma tabela. Isso garante a precisão e a confiabilidade dos dados na tabela. Se existir alguma violação entre a constraint e a dado a ação é abortada.

- `CREATE TABLE <table_name> ( <column_1> <datatype> <constraint>, <column_2> <datatype> <constraint>, <column_3> <datatype> <constraint>, .... );`

<details>
  <summary>Exemplo 1(Primary key)</summary>

#### Primary key simples.

```sql
CREATE TABLE products (
    product_no integer PRIMARY KEY,
    name text,
    price numeric
);
```

#### Primary key composta.

```sql
CREATE TABLE example (
    a integer,
    b integer,
    c integer,
    PRIMARY KEY (a, c)
);
```

</details>

<details>
  <summary>Exemplo 2 (Foreign key)</summary>

#### Foreign key simples.

```sql
CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    product_no integer REFERENCES products (product_no) ON DELETE CASCADE ON UPDATE CASCADE,
    quantity integer
);
```

#### Foreign key composta.

```sql
CREATE TABLE t1 (
  a integer PRIMARY KEY,
  b integer,
  c integer,
  FOREIGN KEY (b, c) REFERENCES other_table (c1, c2)
);
```

</details>

|Constraint|Função|
|:---:|:---:|
|`NOT NULL`|Garante que a coluna não pode ser nula.|
|`UNIQUE`|Garante que todos os valores na coluna serão diferentes|
|`PRIMARY KEY`|Uma combinação de `NOT NULL` e `UNIQUE`. Identifica exclusivamente cada linha em uma tabela.|
|`CHECK`|Garante que os valores em um coluna satisfaça uma condição.|
|`DEFAULT`|Define um valor padrão para uma coluna caso um valor não seja especificado.|
|`CREATE INDEX`|Usado para criar e recuperar dados rapidamente.|
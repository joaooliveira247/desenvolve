# 🏗️ `DDL` - Data Definition Language

Uma linguagem de definição de dados (DDL) permite aos usuários especificar um esquema de banco de dados através de um conjunto de definições. Um esquema é o projeto geral de um banco de dados e raramente é modificado. Compõe uma linguagem de consulta banco de dados, como por exemplo, o SQL. Se assemelha a uma linguagem simples (do inglês) e torna fácil a interação do usuário com o sistema de banco de dados. 

DDL fornece comandos para que os usuários consigam criar, alterar e remover estruturas de dados.

Veja abaixo os comandos e o que eles fazem: 

|CREATE|utilizado para criar banco de dados, tabelas, store procedures, entre outros|
|:---:|:---:| 
|ALTER|faz modificações em objetos criados com o CREATE, como inserir ou remover uma nova coluna em uma tabela, alterar o tipo das colunas|
|DROP|remove o que foi criado com o CREATE|

## `CREATE`

- `CREATE DATABASE <db_name>;`

    - Cria um banco de dados.

- `CREATE TABLE <table_name> (<field_1>, <field_2>, <field_n>, PRIMARY KEY (field_1));`

    - Cria uma tabela no banco de dados.

    - Recomenda-se que para cada tabela tenha uma `Primary Key`.

    - `PRIMARY KEY` é uma constraint.

- `CREATE INDEX <index_name> ON <table_name> (<column_1>, <column_2>, <column_n>);`

    - Cria um indice na tabela. valores duplicados são permitidos.

## `ALTER`

- `ALTER TABLE <table_name> DROP COLUM N <column>;`

    - Esse comando irá fazer uma alteração na tabela deletando uma coluna.

- `ALTER TABLE <table_name> ADD COLUMN <column>;`

    - Esse comando irá alterar a tabela criando uma novo coluna.

## `DROP`

- `DROP DATABASE <db_name>;`

    - Deleta um banco de dados.

- `DROP TABLE <table_name>;`

    - Deleta uma tabela.

## Constraints

SQL constraints são usadas para especificar um determinada regra para um dado em uma tabela.

Elas são usadas para limitar um tipo de data que pode ir em uma tabela. Isso garante a precisão e a confiabilidade dos dados na tabela. Se existir alguma violação entre a constraint e a dado a ação é abortada.

- `CREATE TABLE <table_name> ( <column_1> <datatype> <constraint>, <column_2> <datatype> <constraint>, <column_3> <datatype> <constraint>, .... );`

<details>
  <summary>Exemplo</summary>

`ALTER TABLE <table_name> ADD CONSTRAINT <constraint_name> FOREIGN KEY (<field_FK> REFERENCES <table_name> (<field_PK>) ON DELETE NO ACTION ON UPDATE NO ACTION;`

</details>

|Constraint|Função|
|:---:|:---:|
|`NOT NULL`|Garante que a coluna não pode ser nula.|
|`UNIQUE`|Garante que todos os valores na coluna serão diferentes|
|`PRIMARY KEY`|Uma combinação de `NOT NULL` e `UNIQUE`. Identifica exclusivamente cada linha em uma tabela.|
|`CHECK`|Garante que os valores em um coluna satisfaça uma condição.|
|`DEFAULT`|Define um valor padrão para uma coluna caso um valor não seja especificado.|
|`CREATE INDEX`|Usado para criar e recuperar dados rapidamente.|
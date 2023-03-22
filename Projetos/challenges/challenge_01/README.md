# 🏆 Challenge 01

<details>
  <summary>Desafio</summary>

## PASSO 1: CRIAÇÃO DE DADO BRUTO

- Nome da tabela: bronze_netflix

- criar tabela

    ```SQL
    CREATE TABLE bronze_netflix(
    show_id      VARCHAR(5) NOT NULL PRIMARY KEY
    ,type         VARCHAR(7) NOT NULL
    ,title        VARCHAR(104) NOT NULL
    ,director     VARCHAR(208)
    ,desc_cast    VARCHAR(771)
    ,country      VARCHAR(123)
    ,date_added   VARCHAR(19)
    ,release_year VARCHAR(6) NOT NULL
    ,rating       VARCHAR(12)
    ,duration     VARCHAR(12)
    ,listed_in    VARCHAR(79) NOT NULL
    ,description  VARCHAR(248) NOT NULL
    );
    ```

- Inserir dados

    ```SQL
    COPY bronze_netflix(show_id,type,title,director,desc_cast,country,date_added,release_year,rating,duration,listed_in,description)
    FROM '<path>'
    DELIMITER ';'
    ENCODING 'UTF8'
    CSV HEADER;
    ```

## PASSO 2: HIGIENIZAÇÃO DE DADO
- Nome da tabela: prata_netflix

- Inserir os dados na tabela acima com as seguintes regras:

    - Campos que possuem valores vazios devem ter esses valores substituídos pela string: “Desconhecido”.

    - O campo description pode ter somente 120 caracteres, portanto, caso haja mais, considerar somente os primeiros 120.

    - O campo show_id precisa ser do tipo integer na nova tabela, para isso antes da inserção na tabela a string: “s” deve ser removida.

    - O campo release_year deve ser inteiro, caso o campo esteja vazio, considerar o valor 9999.

</details>

## <img src="https://wiki.postgresql.org/images/9/9a/PostgreSQL_logo.3colors.540x557.png" width="20px"> [Resolução com PostgresSQL](./challenge_01/postgre/)
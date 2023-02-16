# Modelagem de Dados.

A **__modelagem de dados__** é um dos processos mais importantes ao se trabalhar em um projeto de banco de dados. Nele, os dados são levantados, tratados e estruturados para, assim, termos uma boa base para a construção de um banco de dados.

Além do modelo conceitual, utilizado para o entendimento dos requisitos do sistema, pois explora as estruturas e conceitos do negócio, também podemos trabalhar com dois outros modelos: o lógico e o físico.

- O **__modelo lógico__** é criado para realizar a descrição de como os dados serão armazenados no sistema. Ele explora os conceitos de domínio. Nesse modelo, descrevemos as entidades, os atributos, as chaves primárias e estrangeiras e os seus relacionamentos.

- O **__modelo físico__** também é criado para descrever as tabelas, suas colunas e os relacionamentos. Diferente do modelo lógico, podemos utilizar uma linguagem padrão para realizar essa representação: a linguagem SQL, utilizada para trabalhar com banco de dados relacionais.

Então vamos utilizar, texto, diagramas e símbolos, para que tudo fique bem estruturado, para que evitemos gasto desnecessário de espaço, coisas com duplo sentido, que fique um pouco perdido, então através da modelagem conseguimos deixar o banco de dados criado da melhor maneira possível.

## SGDB (`Sistema de Gerenciamento de Banco de Dados`)

Um Sistema de Gerenciamento de Banco de Dados (SGBD) – do inglês Data Base Management System (DBMS) – é o conjunto de programas de computador (softwares) responsáveis pelo gerenciamento de uma base de dados. Seu principal objetivo é retirar da aplicação cliente a responsabilidade de gerenciar o acesso, a manipulação e a organização dos dados. O SGBD disponibiliza uma interface para que seus clientes possam incluir, alterar ou consultar dados previamente armazenados. Em bancos de dados relacionais a interface é constituída pelas APIs (Application Programming Interface) ou drivers do SGBD, que executam comandos na linguagem SQL (Structured Query Language).”

- **__Modelo de alto nível__** está mais próximo da linguagem humana.

    - O modelo (conceitual / lógico), por exemplo, é um modelo de alto nível.


- **__Modelo de baixo nível__** está mais próximo da linguagem da máquina. 

    - Os modelos físicos são considerados de baixo nível.

## Modelo de Entidade e Relacionamento (`MER`)

De forma simples, podemos dizer que o Modelo de Entidade e Relacionamento (MER) são diagramas utilizados para projetar Bancos de Dados Relacionais, utilizando como base a relação de objetos reais, e sendo representado por meio de entidades e relacionamentos. 

É possível usar o MER para ilustrar como os dados são estruturados nos processos de negócios ou para detalhar como os dados são armazenados nos bancos de dados relacionais.

- Modelo de criação no Banco de dados.

## Diagrama de Entidade Relacionamento (`DER`)

Ao falar de MER, sempre nos deparamos com o Diagrama de Entidade Relacionamento (DER). Na verdade, o DER nada mais é que a representação gráfica do que foi escrito no MER. 

Ou seja, enquanto o MER  mostra os relacionamentos de conjuntos de entidades armazenados em um banco de dados. O DER é simplesmente a representação gráfica disso.  Dessa forma, as duas siglas são usadas até mesmo como sinônimos, já que uma está vinculada a outra.

- O diagrama

## [📖 Modelo Conceitual](./conceptual_model.md)

## [🤔 Modelo Lógico](./logic_model.md)

## [🚧 Modelo Fisico](./physical_model.md)

## Leituras complementares.

|Artigo|Autor|
|:---:|:---:|
|[Introdução a modelagem de dados](https://dev.to/wonderwanny/introducao-a-modelagem-de-dados-5d0)|[Vanny](https://dev.to/wonderwanny)|

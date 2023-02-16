# 🤔 Modelo lógico

O modelo lógico de dados é criado a partir das descrições dos dados representadas em um modelo conceitual. Ele descreve como os dados serão armazenados no banco de dados, identificando as entidades, os atributos, as chaves primárias e estrangeiras e os seus relacionamentos.

![logic_model](./assets/images/logic_model_example.png)

### Entidades = Relação = Tabela

> Observação:
>
> Atributos multivalorados devem ser escrito duas vezes
>
> `ex:`
>
> `telefone(1,2)` = `telefone_1`, `telefone_2`

![logic_ent](./assets/images/logic_ent.png)

#### Entidades Fortes

- Serão identificadas pela presença de uma chave primária (`PK`).

![strong_ent](./assets/images/logic_ent.png)

#### Entidades Fracas

- Serão identificas pela presença de uma chave estrangeira (`FK`).

![weak_ent](./assets/images/logic_fk.png)

#### Entidades associativas

- Serão as "tabelas de ligação"

![ent_assosc](./assets/images/ent_assosc_logic.png)

#### Atributo especialidade

![attr_esp_logic](./assets/images/attr_esp_logic.png)

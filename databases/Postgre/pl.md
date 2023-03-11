# 📜 `PL/pgSQL` - Procedural Language

PL/pgSQL é uma linguagem estrutural estendida da SQL que tem por objetivo auxiliar as tarefas de programação no PostgreSQL. Ela incorpora à SQL características procedurais, como os benefícios e facilidades de controle de fluxo de programas que as melhores linguagens possuem.

---

## Funções SQL

### `CREATE OR REPLACE`

- `CREATE FUNCTION <function_name>(<arg_1> <type>, <arg_n> <type>) RETURNS <type_return> '<query>' LANGUAGE <SQL>;`

    - Se não tiver um schema ele criara uma função no schema `public`.

    - Caso tenha um schema basta colocar o nome do schema `schema.function_name`.

    - Um argumento também pode ser uma tabela, é um atributo pode ser acessado e modificado dentro da funnção.

    - Um `SETOF` após `RETURNS` fará com que o retorno seja um conjunto, `TABLE (<fields>)` retornará uma tabela com campos especificos .

    - `type_return` pode ser um tipo composto ou em `<args>`, `IN` definirá uma entrada e `OUT` a saída, portanto podendo tipar quando os retornos forem duplos.

<details>
  <summary>Exemplo</summary>

```SQL
CREATE OR REPLACE FUNCTION academico.add_two_numbers(one INTEGER, two INTEGER) RETURNS INTEGER AS
'SELECT $1 + $2;' LANGUAGE SQL;
```

```SQL
CREATE OR REPLACE FUNCTION academico.add_two_numbers(one INTEGER, two INTEGER) RETURNS INTEGER
LANGUAGE SQL
RETURN one + two;
```

</details>

> **__Observação:__**
>
> Você pode ver strings tanto com `''` ou `$$ $$`.

---

## PL/pgSQL

`pl/pgsql` usa os mesmo pricipios das funções SQL, mas agora temos suporte para estruras mais complexas, com controle de fluxo, estrutura de repetição, etc .

### `CREATE OU REPLACE`

`CREATE OR REPLACE FUNCTION <schema>.<functioon_name>(arg_1, arg_n) RETURNS <type> AS $$ BEGIN <logic> END $$ LANGUAGE plpgsql;`

<details>
  <summary>Exemplo</summary>

```SQL
CREATE OR REPLACE FUNCTION academico.sum_two_numbers(n1 INTEGER, n2 INTEGER) RETURNS INTEGER AS $$
BEGIN
	RETURN $1 + $2;
END
$$ LANGUAGE plpgsql;
```

</details>

### Variaveis

- Declaração

  `
  DECLARE
      <var_name> <type> DEFAULT <value>;
  `

  <details>
    <summary>
      Exemplo
    </summary>

  ```SQL
  CREATE OR REPLACE FUNCTION academico.bonificacao(sal NUMERIC) RETURNS INTEGER AS $$
  DECLARE
    bonificacao NUMERIC DEFAULT 0.3;
  BEGIN
    RETURN sal + (sal * bonificacao);
  END
  $$ LANGUAGE plpgsql;
  ```

  </details>


- Reatribuição

  `<var_name> := <value>;`

  <details>
    <summary>Exemplo</summary>

  ```SQL
  CREATE OR REPLACE FUNCTION academico.bonificacao(sal NUMERIC) RETURNS INTEGER AS $$
  DECLARE
	  bonificacao NUMERIC DEFAULT 0.3;
  BEGIN
	  bonificacao := 0.25;
	RETURN sal + (sal * bonificacao);
  END
  $$ LANGUAGE plpgsql;
  ```

  </details>

### Bloco de código.

- Todo bloco de código começará com `BEGIN` e terminará com `END`.

- Pode existir um bloco dentro de outro, estabelecendo uma relação de bloco pai(1º) e filho(2º ou o que esta dentro).

### `RETURN`

- `RETURN` vázio.

```SQL
RETURN void;
```

- `RETURN` uma linha.

```SQL
RETUN ROW(<value_1>, <value_2>, <value_n>)::<type(pode ser composto ou uma tabela)>;
```

- `RETURN` tipo composto.

```SQL
DECLARE
  retorno <type>;
BEGIN
  SELECT (<value_1>, <value_2>, <value_n>) INTO retorno;
  RETURN retorno;
END
```

- `RETURN` tipo query.

```SQL
RETURN QUERY <query>;
```

### [Controle de fluxo](https://www.postgresql.org/docs/current/plpgsql-control-structures.html#CONDITIONALS)

- `IF` e `ELSE`

```SQL
CREATE OR REPLACE FUNCTION academico.increase(func academico.funcionario) RETURNS BOOLEAN AS $$
BEGIN
	IF func.salario >= 300.00 THEN
		RETURN false;
	ELSE
		RETURN true;
	END IF;
END;
$$ LANGUAGE plpgsql;
```

- `ELSEIF`

`ELSEIF <condition> THEN RETURN <value>;`

- `CASE WHEN`

```SQL
CREATE OR REPLACE FUNCTION academico.increase(func academico.funcionario) RETURNS VARCHAR AS $$
BEGIN
	CASE 
		WHEN func.salario < 300 THEN
			RETURN 'SALARIO BAIXO.';
		WHEN func.salario = 300 THEN
			RETURN 'SALARIO OK';
		ELSE
			RETURN 'SALARIO OTIMO';
	END CASE;
END;
$$ LANGUAGE plpgsql;
```

### [Estrutura de repetição](https://www.postgresql.org/docs/current/plpgsql-control-structures.html#PLPGSQL-CONTROL-STRUCTURES-LOOPS)

- `LOOP`

```SQL
CREATE OR REPLACE FUNCTION academico.tabuada(num INTEGER) RETURNS SETOF INTEGER AS $$
DECLARE
	mult INTEGER DEFAULT 1;
BEGIN
	LOOP
		RETURN NEXT num * mult;
		mult := mult + 1;
		
		EXIT WHEN mult = 11;
	END LOOP;
END;
$$ LANGUAGE plpgsql;
```

- `WHILE LOOP`

```SQL
CREATE OR REPLACE FUNCTION academico.tabuada(num INTEGER) RETURNS SETOF INTEGER AS $$
DECLARE
	mult INTEGER DEFAULT 1;
BEGIN
	WHILE mult < 11 LOOP
		RETURN NEXT num * mult;
		mult := mult + 1;
	END LOOP;
END;
$$ LANGUAGE plpgsql;
```

- `FOR LOOP`

```SQL
CREATE OR REPLACE FUNCTION academico.tabuada(num INTEGER) RETURNS SETOF INTEGER AS $$
BEGIN
	FOR mult IN 1..10 LOOP
		RETURN NEXT num * mult;
	END LOOP;
END;
$$ LANGUAGE plpgsql;
```
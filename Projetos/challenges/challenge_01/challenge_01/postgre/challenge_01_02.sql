/* 1º Criar a tabela como descrita no desafio, optei por usar SERIAL ao invés
de INTEGER NOT NULL */

CREATE TABLE fakeflix.prata_netflix(
  show_id      SERIAL PRIMARY KEY,
  type         VARCHAR(7) NOT NULL,
  title        VARCHAR(104) NOT NULL,
  director     VARCHAR(208),
  desc_cast    VARCHAR(771),
  country      VARCHAR(123),
  date_added   VARCHAR(19),
  release_year INTEGER NOT NULL,
  rating       VARCHAR(8),
  duration     VARCHAR(10),
  listed_in    VARCHAR(79) NOT NULL,
  description  VARCHAR(120) NOT NULL);

-- 2º Classificar quais campos tem uma string vazia

SELECT DISTINCT <field_name> FROM fakeflix.bronze_netflix WHERE <field_name> = '';

/*
|COLUMN_NAME|IS_EMPTY|
|show_id|FALSE|
|type|FALSE|
|title|FALSE|
|director|TRUE|
|desc_cast|TRUE|
|country|TRUE|
|date_added|TRUE|
|release_year|FALSE|
|rating|TRUE|
|duration|TRUE|
|listed_in|FALSE|
|description|FALSE|
*/

/* 3º alterar os campos o tamano do campo rating e duration caso contrario
não conseguiria inserir 'Desconhecido'
*/

ALTER TABLE fakeflix.prata_netflix ALTER COLUMN <column_name> TYPE VARCHAR(12);

-- 4º Criar as funções para limpar da tabela.

CREATE FUNCTION fakeflix.clean_director(field VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	IF field = '' THEN
		RETURN 'Desconhecido';
	ELSE
		RETURN field;
	END IF;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION fakeflix.description_fix_length(string VARCHAR, length_ INTEGER) RETURNS VARCHAR AS $$
BEGIN
	IF LENGTH(string) > length_ THEN
		RETURN SUBSTRING(string FROM 1 for length_);
	ELSE
		RETURN string;
	END IF
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION fakeflix.clean_id(id VARCHAR) RETURNS INTEGER AS $$
BEGIN
	RETURN SUBSTRING(id FROM 2)::INTEGER;
END;
$$ LANGUAGE plpgsql;

-- 5º Inserir os valores limpos na tabela nova.

INSERT INTO fakeflix.prata_netflix 
SELECT 
fakeflix.clean_id(fakeflix.bronze_netflix.show_id),
type,
title,
fakeflix.clean_empty_fields(fakeflix.bronze_netflix.director),
fakeflix.clean_empty_fields(fakeflix.bronze_netflix.desc_cast),
fakeflix.clean_empty_fields(fakeflix.bronze_netflix.country),
fakeflix.clean_empty_fields(fakeflix.bronze_netflix.date_added),
release_year::INTEGER,
fakeflix.clean_empty_fields(fakeflix.bronze_netflix.rating),
fakeflix.clean_empty_fields(fakeflix.bronze_netflix.duration),
listed_in,
fakeflix.description_fix_length(fakeflix.bronze_netflix.description, 120) FROM fakeflix.bronze_netflix;

CREATE SCHEMA fakeflix;

CREATE TABLE fakeflix.bronze_netflix(
  show_id      VARCHAR(5) NOT NULL PRIMARY KEY,
  type         VARCHAR(7) NOT NULL,
  title        VARCHAR(104) NOT NULL,
  director     VARCHAR(208),
  desc_cast    VARCHAR(771),
  country      VARCHAR(123),
  date_added   VARCHAR(19),
  release_year VARCHAR(6) NOT NULL,
  rating       VARCHAR(8),
  duration     VARCHAR(10),
  listed_in    VARCHAR(79) NOT NULL,
  description  VARCHAR(248) NOT NULL);

-- Por usar linux tive problema de permissão na hora de copiar o csv optei por
-- usar o psql, \<comando_abaixo>;

COPY fakeflix.bronze_netflix(show_id,type,title,director,desc_cast,country,date_added,release_year,rating,duration,listed_in,description)
FROM '/home/virusxdrj/Projects/desenvolve/Projetos/challenges/challenge_01/challenge_01/assets/csv/netflix_export.csv'
DELIMITER ';'
ENCODING 'UTF8'
CSV HEADER;


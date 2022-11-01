  CREATE TABLE PARTICIONAMENTO_TABELA_ESTOQUE
  (nome_es VARCHAR2(20),
  cor_es VARCHAR2(12),
  tamanho_es CHAR(3),
  quant_es NUMBER(5))
  PARTITION BY LIST (cor_es) 
    (PARTITION PRIMEIRO_GRUPO_DE_CORES
      VALUES ('Vermelho', 'Verde', 'Azul', 'Preto'),
    PARTITION SEGUNDO_GRUPO_DE_CORES
      VALUES ('Bege', 'Branco', 'Vinho'));
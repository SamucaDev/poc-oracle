  
  CREATE TABLE PARTICIONAMENTO_TABELA_REPOSICAO (
    nome_rep VARCHAR2(20),
    cor_rep VARCHAR2(12),
    tamanho_rep CHAR(3),
    quant_rep NUMBER(5)
    ) 
    PARTITION BY LIST (nome_rep) 
    (
      PARTITION Cigarrete
      VALUES ('Cigarrete'),
      PARTITION Flare
      VALUES ('Flare'),
      PARTITION Cropped
      VALUES ('Cropped'),
      PARTITION Hot_Pants
      VALUES ('Hot Pants'),
      PARTITION Pantacourt
      VALUES ('Pantacourt'),
      PARTITION Skinny
      VALUES ('Skinny')
    );

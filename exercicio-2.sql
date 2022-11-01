  CREATE VIEW V_ODERNAR_ORDEM_ESPECIFICA AS 
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM  estoque_tmp 
  WHERE tamanho_es='PP'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM  estoque_tmp 
  WHERE tamanho_es='M'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM  estoque_tmp 
  WHERE tamanho_es='EG'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM  estoque_tmp 
  WHERE tamanho_es='P'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM  estoque_tmp 
  WHERE tamanho_es='G';

  SELECT * FROM V_ODERNAR_ORDEM_ESPECIFICA
  ORDER BY CASE WHEN TAMANHO = 'PP' THEN 1
                WHEN TAMANHO = 'P' THEN 2
                WHEN TAMANHO = 'EG' THEN 3
                WHEN TAMANHO = 'G' THEN 4
                WHEN TAMANHO = 'M' THEN 5
                END;
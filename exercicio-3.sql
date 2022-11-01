  CREATE VIEW V_ORDENAR_POR_GRUPO_DE_CORES AS
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM  estoque_tmp 
  WHERE cor_es='Preto'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM estoque_tmp
  WHERE cor_es='Bege'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM estoque_tmp
  WHERE cor_es='Vinho'
  UNION
  SELECT  nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE FROM estoque_tmp
  WHERE cor_es='Branco';

  SELECT * FROM V_ORDENAR_POR_GRUPO_DE_CORES
  ORDER BY CASE WHEN COR = 'Preto' THEN 1
                WHEN COR = 'Bege' THEN 2
                WHEN COR = 'Vinho' THEN 3
                WHEN COR = 'Branco' THEN 4
                END;
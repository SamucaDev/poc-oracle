  
  CREATE VIEW V_RELATORIO_NAO_EXISTE_ESTOQUE AS 
  SELECT nome_rep, cor_rep, tamanho_rep FROM reposicao_tmp
  MINUS
  SELECT nome_es, cor_es, tamanho_es FROM estoque_tmp;

  SELECT * FROM V_RELATORIO_NAO_EXISTE_ESTOQUE;
  
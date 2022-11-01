  
  SELECT nome_rep, cor_rep, tamanho_rep FROM reposicao_tmp
  MINUS
  SELECT nome_es, cor_es, tamanho_es FROM estoque_tmp;
  
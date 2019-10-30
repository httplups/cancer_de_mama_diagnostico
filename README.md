# numero_projeto_4


 load DadosTreinamento.mat;
	
 n = 20;
 
 d = 30;
 
 m = 393;
 
 W = randn(n,d);
 
 b = randn(n,1);
 
 G = tanh(W*Xtr+b);

 [A,C] = minimos_quadrados(n, G, ytr);
 
 a = A/C;
 
 S = a'*G;
 
 yt1 = limiar(S, -2, m);
 
 yt2 = limiar(S, 0, m);
 
 yt3 = limiar(S, 2, m);
 
 [qtdCorretos1, ac1, tfn1] = compara_testes(yt1, ytr, m)
 
 [qtdCorretos2, ac2, tfn2] = compara_testes(yt2, ytr, m)
 
 [qtdCorretos3, ac3, tfn3] = compara_testes(yt3, ytr, m)


>> load DadosTreinamento.mat;
	Carrega a matriz Xtr e o vetor Ytr no workspace
>> n = 20;
>> d = 30;
>> m = 393;
>> W = randn(n,d);
>> b = randn(n,1);
>> G = tanh(W*Xtr+b);
Obtemos as funções gis utilizadas na construção da função /matriz s
>> [A,C] = minimos_quadrados(n, G, ytr);
Utilizamos uma função minimos_quadrados.m para computar o método dos quadrados mínimos pela equação (5) e (6) e, assim descobrir os valores de A e C, formando a equação (4).
>> a = A/C;
Computamos a equação (4) utilizando a resolução do sistema linear feito diretamente pelo GNU Octave. Note que poderíamos ter utilizado o método de resolução de Gauss implementado no Projeto 1.
>>  S = a'*G;
Agora, temos os valores de S(k) = (Xtr(:,k)) definidos, ou seja, temos os valores de  calculado em cada uma das pacientes k, como dito na equação (7).
>> yt1 = limiar(S, -2, m)
Utilizamos a função limiar.m para computar a comparação mostrada em (8), onde definimos os valores {-1,1} para o vetor yt1, yt2 e yt3, conforme o limiar L = {-2,0,2} respectivamente. 
>> yt2 = limiar(S, 0, m)
>> yt3 = limiar(S, 2, m)
>>  [qtdCorretos1, ac1, tfn1] = compara_testes(yt1, ytr, m)
	Tendo o vetor yt1, podemos calcular, chamando a função compara_testes.m, o número de pacientes diagnosticados corretamente pelo sistema (qtdCorretos1), a acurácia (ac1) e a taxa de falso negativo (tfn1). O mesmo foi feito para os vetores yt2 e yt3.
>>  [qtdCorretos2, ac2, tfn2] = compara_testes(yt2, ytr, m)
>>  [qtdCorretos3, ac3, tfn3] = compara_testes(yt3, ytr, m)

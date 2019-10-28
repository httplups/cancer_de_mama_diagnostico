function [A,C] = combinacoes(n, G, ytr)
  A = zeros(n,n);
  C = linspace(0,0,n);
  
  
  
  # iterando os pacientes
    for i = 1:n
        for j = 1:n
          #printf("(%d,%d,%d)\n", i,j,k);
          A(i,j) = dot(G(i,:), G(j,:));
          #print("%d\n", R)
          # printf("%d %d\n", i, j)
        end
        
        C(i) = dot(G(i,:), ytr);
        
    end
  
end

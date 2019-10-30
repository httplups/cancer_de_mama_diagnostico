function [count_corretos, ac, tfn] = compara_testes(Yteste, ytr, m)
  count_corretos = 0;
  count_tfn = 0;
  count_maligno = 0;
  for i = 1:m
      if (Yteste(i) == ytr(i))
        count_corretos++;
      end
      if ((Yteste(i) == -1) && (ytr(i) == 1))
        count_tfn++;
      end
      if(ytr(i) == 1)
        count_maligno++;
      end
  end
  #printf("Cancer malig: %d\n", count_maligno);
  ac = count_corretos/m;
  tfn = count_tfn/count_maligno;
end
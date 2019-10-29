function [count_corretos, ac, fn] = compara_testes(Yteste, ytr)
  count_corretos = 0;
  count_nf = 0;
  count_maligno = 0;
  for i = 1:393
      if (Yteste(i) == ytr(i))
        count_corretos++;
      end
      if ((Yteste(i) == -1) && (ytr(i) == 1))
        count_nf++;
      end
      if(ytr(i) == 1)
        count_maligno++;
      end
  end
  printf("Cancer malig: %d\n", count_maligno);
  ac = count_corretos/393;
  fn = count_nf/count_maligno;
end
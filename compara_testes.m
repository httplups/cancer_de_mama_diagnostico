function count = compara_testes(Yteste, ytr)
  count = 0;
  for i = 1:393
      if (Yteste(i) == ytr(i))
      count++;
    end
  end
end

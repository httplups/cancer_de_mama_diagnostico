function Yteste = limiar(S, L)
  Yteste = linspace(0,0,393);
  for i = 1:393
    if (L < S(i))
      Yteste(i) = 1;
    else
      Yteste(i) = -1;
    end
  end
end

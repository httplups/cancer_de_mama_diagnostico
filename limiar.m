function Yteste = limiar(S, L, m)
  Yteste = linspace(0,0,m);
  for i = 1:m
    if (L < S(i))
      Yteste(i) = 1;
    else
      Yteste(i) = -1;
    end
  end
end

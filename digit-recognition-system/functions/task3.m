function new_X = task3 (photo, pcs)
  [m, n] = size (photo);
  new_X = zeros (m, n);
  photo = (double)(photo);
  miu = zeros(m, 1);
  for i = 1 : m
    miu(i) = sum(photo(i, :)) / n;
    photo(i, :) = photo(i, :) - miu(i);
  endfor
  Z = (photo * (photo')) / (n - 1);
  [V, S] = eig(Z);
  [~, indexes] = sort(diag(S), "descend");
  V = V(:, indexes);
  W = V(:, 1 : pcs);
  Y = (W') * photo;
  new_X = W * Y + miu;
  new_X = uint8(new_X);
endfunction

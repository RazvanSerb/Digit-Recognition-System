function new_X = task1 (photo, k)
  [m, n] = size (photo);
  new_X = zeros (m, n);
  photo = (double)(photo);
  [U, S, V] = svd(photo);
  U = U(:, 1 : k);
  S = S(1 : k, 1 : k);
  V = V(:, 1 : k);
  new_X = U * S * (V');
  new_X = uint8(new_X);
endfunction

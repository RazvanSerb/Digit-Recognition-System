function new_X = task2 (photo, pcs)
  [m, n] = size(photo);
  new_X = zeros(m, n);
  photo = (double)(photo);
  miu = mean(photo, 2);
  photo = photo - miu;
  Z = (photo') / ((n - 1) ^ (1 / 2)); 
  [U, S, V] = svd(Z);
  W = V(:, 1 : pcs);
  Y = (W') * photo;
  new_X = W * Y + miu;
  new_X = uint8(new_X);
endfunction

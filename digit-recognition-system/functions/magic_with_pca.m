function [train, miu, Y, Vk] = magic_with_pca (train_mat, pcs)
  [m, n] = size (train_mat);
  train = zeros (m, n);
  miu = zeros (1, n);
  Y = zeros (m, pcs);
  Vk = zeros (n, pcs);
  train_mat = (double)(train_mat);
  miu = mean(train_mat, 1);
  train_mat = train_mat - miu;
  Z = ((train_mat') * train_mat) / (n - 1);
  [V, S] = eig(Z);
  [~, indexes] = sort(diag(S), "descend");
  V = V(:, indexes);
  Vk = V(:, 1 : pcs);
  Y = train_mat * Vk;
  train = Y * (Vk)';
endfunction



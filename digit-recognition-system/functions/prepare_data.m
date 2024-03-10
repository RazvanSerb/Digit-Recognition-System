function [train_mat, train_val] = prepare_data (name, no_train_images)
  n = 784;
  train_mat = zeros (no_train_images, n);
  train_val = zeros (1, no_train_images);
  d = load(name);
  X = d.trainX;
  train_mat = X(1 : no_train_images, :);
  Y = d.trainY;
  train_val = Y(1 : no_train_images);
endfunction

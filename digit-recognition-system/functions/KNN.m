function prediction = KNN (labels, Y, test, k)
  prediction = -1;
  [m, n] = size (Y);
  distance = zeros (m, 1);
  for i = 1 : m
    distance(i) = norm(Y(i, :) - test, 2);
  endfor
  [~, indexes] = sort(distance, "ascend");
  k_labels = labels(indexes(1 : k));
  prediction = median(k_labels);
endfunction

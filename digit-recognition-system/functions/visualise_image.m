function im = visualise_image (train_mat, number)
  im = zeros (28, 28);
  line_searched = train_mat(number, :);
  im = reshape(line_searched, 28, 28);
  im = im';
  im = uint8(im);
  % imshow (im)
endfunction

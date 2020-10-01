function [new_mat] = addBias(X)

  new_mat = [ones(size(X, 1), 1), X];

end


%!assert (size(addBias([1, 2, 3; 4, 5, 6]), 2), 4)
%!assert (addBias([1, 2, 3; 4, 5, 6])(:, 1), [1; 1])
%!assert (addBias([2, 3; 4, 5]), [1, 2, 3; 1, 4, 5])
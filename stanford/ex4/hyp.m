function [h, z3, a2, z2] = hyp(X, Theta1, Theta2)

  z2 = addBias(X) * Theta1';
  a2 = sigmoid(z2);
  z3 = addBias(a2) * Theta2';
  h = sigmoid(z3);
  


end

%!test
%! x = [2, 3; 4, 5];
%! t1 =  [5, 6, 7; 7, 8, 9];
%! t2 = [1, 2, 3];
%! val = hyp(x, t1, t2);
%! assert(size(hyp(x, t1, t2), 1), 2)
%! assert(size(hyp(x, t1, t2), 2), 1)
%! assert(max(val)<1)
%! assert(max(val)>0)
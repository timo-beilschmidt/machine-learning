function [works] = testHyp(X, Theta1, Theta2)

  h = hyp(X, Theta1, Theta2);

  ht = zeros(size(X, 1), size(Theta2, 1));
  temp = zeros(size(X, 1), size(Theta1, 1));

  X = addBias(X);

  for i=1:size(X, 1)
    
    for j=1:size(Theta1, 1)
    
      for k=1:size(Theta1, 2)
        
        temp(i, j) += X(i, k) * Theta1(j, k);
        
      endfor
  
    endfor

  endfor

  temp = addBias(sigmoid(temp));
  
  size(temp)

  for i=1:size(X, 1)
    
    for j=1:size(Theta2, 1)
    
      for k=1:size(Theta2, 2)
        
        ht(i, j) += X(i, k) * Theta2(j, k);
        
      endfor
  
    endfor

  endfor

  ht = sigmoid(temp);

  works = sum(ht==h);

  
end
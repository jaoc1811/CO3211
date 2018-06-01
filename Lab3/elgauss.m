function x = elgauss(A,b,C)

if C == 0
  x = sinpivoteo(A,b);
elseif C == 1
  x = conpivoteo(A,b);
end
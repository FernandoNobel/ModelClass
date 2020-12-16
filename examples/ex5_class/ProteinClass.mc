Class Protein

  Variable x;

  Parameter w_x(value = 1.0);
  Parameter d_x(value = 1.0);

  Equation der_x == w_x - d_x*x;

end Protein;

%
%Variable a;
%
%Equation der_a == 1;

SimOptions AbsTol = 1e-6;

Test;

Variable x1(start = 0.0);
Parameter A(value = 1);
Equation der_x1 == A;

MatlabCode

disp(1);

end;
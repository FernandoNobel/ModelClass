Class Protein

  Variable x;

  Parameter w_x(value = 1.0);
  Parameter d_x(value = 1.0);

  Equation der_x == w_x - d_x*x;

end Protein;



Namespace myProtein 

  Variable x;

  Parameter w_x(value = 1.0);
  Parameter d_x(value = 1.0);

  Equation der_x == w_x - d_x*x;

end namespace;




Variable x1(start = 0.0);
Parameter A(value = 1);

Equation der_x1 == myProtein__x;

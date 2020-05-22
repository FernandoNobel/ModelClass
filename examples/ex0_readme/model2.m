classdef model2 < ModelClass
methods
function [obj] = model2()
v = VariableClass('x1');
obj.addVariable(v);

v = VariableClass('x2');
obj.addVariable(v);

v = VariableClass('x3');
obj.addVariable(v);

v = VariableClass('ref');
obj.addVariable(v);

p = ParameterClass('k1');
obj.addParameter(p);

p = ParameterClass('k2');
obj.addParameter(p);

p = ParameterClass('k3');
obj.addParameter(p);

p = ParameterClass('d1');
obj.addParameter(p);

p = ParameterClass('d2');
obj.addParameter(p);

p = ParameterClass('d3');
obj.addParameter(p);

p = ParameterClass('gamma12');
obj.addParameter(p);

e = EquationClass('d_x1 == k1    - gamma12*x1*x2 - d1*x1');
obj.addEquation(e);

e = EquationClass('d_x2 == k3*x3 - gamma12*x1*x2 - d2*x2');
obj.addEquation(e);

e = EquationClass('d_x3 == k3*x1 - d3*x3');
obj.addEquation(e);

e = EquationClass('ref  == k3/d3');
obj.addEquation(e);

end
end
end
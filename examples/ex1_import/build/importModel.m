classdef importModel < OneModel
	% This code was generated by OneModel v0.5.1 95580f4   -   Fernando Nóbel (fersann1@upv.es)
	methods
		function [obj] = importModel(opts)
			v = VariableClass(obj,'x1');
			obj.addVariable(v);

			v = VariableClass(obj,'x2');
			obj.addVariable(v);

			v = VariableClass(obj,'x3');
			obj.addVariable(v);

			p = ParameterClass(obj,'k1');
			obj.addParameter(p);

			p = ParameterClass(obj,'k2');
			obj.addParameter(p);

			p = ParameterClass(obj,'k3');
			obj.addParameter(p);

			p = ParameterClass(obj,'d1');
			obj.addParameter(p);

			p = ParameterClass(obj,'d2');
			obj.addParameter(p);

			p = ParameterClass(obj,'d3');
			obj.addParameter(p);

			p = ParameterClass(obj,'gamma12');
			obj.addParameter(p);

			e = EquationClass(obj,'');
			e.eqn = 'der_x1 == k1    - gamma12*x1*x2 - d1*x1';
			obj.addEquation(e);

			e = EquationClass(obj,'');
			e.eqn = 'der_x2 == k2*x3 - gamma12*x1*x2 - d2*x2';
			obj.addEquation(e);

			e = EquationClass(obj,'');
			e.eqn = 'der_x3 == k3*x1 - d3*x3';
			obj.addEquation(e);

			v = VariableClass(obj,'ref');
			obj.addVariable(v);

			e = EquationClass(obj,'');
			e.eqn = 'ref == k3/d3';
			obj.addEquation(e);

			obj.checkValidModel();
		end

	end
	methods(Static)
		function [out] = isUpToDate()
			dependenciesPath = {...
				'./model/importModel.mc'...
				'./model/baseModel.mc'...
			};
			out = importModel.checkUpToDate(dependenciesPath);
		end
	end
end

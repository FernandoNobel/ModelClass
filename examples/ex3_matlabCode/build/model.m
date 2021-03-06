classdef model < OneModel
	% This code was generated by OneModel v0.5.1 95580f4   -   Fernando Nóbel (fersann1@upv.es)
	methods
		function [obj] = model(opts)
			v = VariableClass(obj,'x');
			v.start = 0;
			obj.addVariable(v);

			p = ParameterClass(obj,'k');
			p.value = 1;
			obj.addParameter(p);

			e = EquationClass(obj,'');
			e.eqn = 'der_x == k - x';
			obj.addEquation(e);

p = obj.getSymbolByName('k');
p.value = 5;

			obj.checkValidModel();
		end

	end
	methods(Static)
		function [out] = isUpToDate()
			dependenciesPath = {...
				'./model/model.mc'...
			};
			out = model.checkUpToDate(dependenciesPath);
		end
	end
end

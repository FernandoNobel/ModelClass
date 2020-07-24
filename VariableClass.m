classdef VariableClass < SymbolClass
  %% VARIABLECLASS This class defines a variable value or state.
  %
  
  properties
    % bool Is the variable no negative?
    isNoNegative
    % real Initial condition value.
    start
  end % properties

  methods 
  
    function [obj] = VariableClass(name)
      %% Constructor of VariableClass.
      %
      % param: name Name of the symbol. 

      obj = obj@SymbolClass(name);
      obj.isNoNegative = false;
      obj.isPlot = true;
      
    end % VariableClass

    function [] =  set.isNoNegative(obj,isNoNegative)
      %% SET.ISNONEGATIVE Set interface for isNoNegative propierty.
      %
      % param: isNoNegative
      %
      % return: void
      
      if ~islogical(isNoNegative)
        error('isNoNegative must be logical.');
      end

      obj.isNoNegative = isNoNegative;
      
    end % set.isNoNegative

    function [] = set.start(obj,in)
      %% SET.START Set interface for start propierty.
      %
      % param: in real Initial condition.
      %
      % return: void
      
      if ~isnumeric(in) || length(in) ~= 1
        error('start must be a real number.');
      end

      obj.start = in;
      
    end % set.start

  end % methods
  
end % classdef

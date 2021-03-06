classdef IfCommand < LineCommand

  properties 
    % [char] Name used for the command. Name is auto-included to keywords.
    name = 'if';
    % {[char]} struct with the list of keywords that must be reserved for this command.
    keywords = {};
    % [char] End sequence of the command.
    endWith = ';';

  end % properties 

  methods

    function [] = execute(obj, raw)
      %% EXECUTE Execute the command.
      %
      % param: raw  Raw text from the OneModel file.
      %
      % return: true if the argument is complete.

      [tokens,matches] = regexp(raw,'if\s*(.*);','tokens','match');

      fprintf(obj.mcp.fout,'\t\t\tif (%s)\n',tokens{1}{1});

    end % execute

  end % methods

end % classdef



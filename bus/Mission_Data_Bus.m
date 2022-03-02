function cellInfo = Mission_Data_Bus(varargin) 
% MISSION_DATA_BUS returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the MATLAB file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, SampleTime, Complexity, SamplingMode, DimensionsMode, Min, Max, DocUnits, Description 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'Mission_Data_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('ms'), ''}; ...
{'valid_items', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'reserved', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'misson_item', 10, 'Bus: Mission_Item_Bus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'Mission_Item_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'seq', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', sprintf('Start from 0')}; ...
{'command', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'frame', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'current', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'autocontinue', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'mission_type', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param1', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param2', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param3', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param4', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param5', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param6', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'param7', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 

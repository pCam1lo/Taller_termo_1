% This script is written and read by pdetool and should NOT be edited.
% There are two recommended alternatives:
% 1) Export the required variables from pdetool and create a MATLAB script
%    to perform operations on these.
% 2) Define the problem completely using a MATLAB script. See
%    https://www.mathworks.com/help/pde/examples.html for examples
%    of this approach.
function pdemodel
[pde_fig,ax]=pdeinit;
pdetool('appl_cb',9);
set(ax,'DataAspectRatio',[1 1 1]);
set(ax,'PlotBoxAspectRatio',[1.4999999999999998 1 3.4318035608721358]);
set(ax,'XLim',[-0.039799577417984948 0.8343763323586223]);
set(ax,'YLim',[-0.093818940247342747 0.4889649996037288]);
set(ax,'XTickMode','auto');
set(ax,'YTickMode','auto');
pdetool('gridon','on');

% Geometry description:
pderect([0 0.80000000000000004 0.40000000000000002 0],'R1');
pdecirc(0.20000000000000001,0.29999999999999999,0.050000000000000003,'C1');
pdecirc(0.59999999999999998,0.10000000000000001,0.050000000000000003,'C2');
set(findobj(get(pde_fig,'Children'),'Tag','PDEEval'),'String','R1-C1-C2')

% Boundary conditions:
pdetool('changemode',0)
pdesetbd(12,...
'dir',...
1,...
'1',...
'27')
pdesetbd(11,...
'dir',...
1,...
'1',...
'27')
pdesetbd(10,...
'dir',...
1,...
'1',...
'27')
pdesetbd(9,...
'dir',...
1,...
'1',...
'27')
pdesetbd(8,...
'dir',...
1,...
'1',...
'27')
pdesetbd(7,...
'dir',...
1,...
'1',...
'27')
pdesetbd(6,...
'dir',...
1,...
'1',...
'27')
pdesetbd(5,...
'dir',...
1,...
'1',...
'27')
pdesetbd(4,...
'dir',...
1,...
'1',...
'27')
pdesetbd(3,...
'dir',...
1,...
'1',...
'16.5')
pdesetbd(2,...
'dir',...
1,...
'1',...
'27')
pdesetbd(1,...
'dir',...
1,...
'1',...
'0')

% Mesh generation:
setappdata(pde_fig,'Hgrad',1.3);
setappdata(pde_fig,'refinemethod','regular');
setappdata(pde_fig,'jiggle',char('on','mean',''));
setappdata(pde_fig,'MesherVersion','preR2013a');
pdetool('initmesh')
pdetool('refine')
pdetool('refine')

% PDE coefficients:
pdeseteq(1,...
'230',...
'20',...
'(0)+(20).*(0.0)',...
'(2700).*(897)',...
'0:699',...
'0.0',...
'0.0',...
'[0 100]')
setappdata(pde_fig,'currparam',...
['2700';...
'897 ';...
'230 ';...
'0   ';...
'20  ';...
'0.0 '])

% Solve parameters:
setappdata(pde_fig,'solveparam',...
char('0','6048','10','pdeadworst',...
'0.5','longest','0','1E-4','','fixed','Inf'))

% Plotflags and user data strings:
setappdata(pde_fig,'plotflags',[1 1 1 1 1 1 7 1 0 0 0 1 1 1 0 0 0 1]);
setappdata(pde_fig,'colstring','');
setappdata(pde_fig,'arrowstring','');
setappdata(pde_fig,'deformstring','');
setappdata(pde_fig,'heightstring','');

% Solve PDE:
pdetool('solve')

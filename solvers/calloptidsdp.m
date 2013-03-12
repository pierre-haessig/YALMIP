function output = calloptidsdp(interfacedata)

% Retrieve needed data
options = interfacedata.options;
F_struc = interfacedata.F_struc;
c       = interfacedata.c;
K       = interfacedata.K;
x0      = interfacedata.x0;
ub      = interfacedata.ub;
lb      = interfacedata.lb;

model = yalmip2optidsdp(interfacedata)
if options.showprogress;showprogress(['Calling ' interfacedata.solver.tag],options.showprogress);end

if options.savedebug
    save dsdpdebug model
end

solvertime = clock; 
[y,fvals,exitflag,stats,X] = dsdp(model.f,model.A,model.b,model.lb,model.ub,model.sdcone,model.y0,model.ops);
solvertime = etime(clock,solvertime);

% Create dual variable in internal format
if options.saveduals  
    if K.l > 0
        top = 1;
        D_struc = X{1};
    else
        top = 0;
        D_struc = [];
    end
    if K.s(1) > 0
        for j = 1:length(K.s)
            n = K.s(j);
            Z = triu(ones(n));
            i = find(Z);
            Z(i) = X{j+top};
            Z = Z + Z' - diag(diag(Z));
            D_struc = [D_struc;Z(:)];
        end
    end
else
    D_struc = [];
end

x = y;  % Our notation do not coincide ...
switch exitflag
    case 1
        problem = 0;
    case -27
        problem = 3;
    otherwise
        problem = -1;
end
infostr = yalmiperror(problem,interfacedata.solver.tag);

if options.savesolveroutput   
	solveroutput.y = y;
    solveroutput.fvals = fvals;
    solveroutput.exitflag = exitflag;
    solveroutput.stats = stats;
    solveroutput.X = X;
else
	solveroutput = [];
end

if options.savesolverinput
	solverinput.model = model;	
else
	solverinput = [];
end

% Standard interface 
output.Primal      = x;
output.Dual        = D_struc;
output.Slack       = [];
output.problem     = problem;
output.infostr     = infostr;
output.solverinput = solverinput;
output.solveroutput= solveroutput;
output.solvertime  = solvertime;
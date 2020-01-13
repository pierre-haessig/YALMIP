function tests = test_global_ex14_2_8
tests = functiontests(localfunctions);

function test1(dummy)
% Model generated from ex14_2_8.gms
% Created 02-Aug-2007 10:41:52 using YALMIP R20070725

% Setup a clean YALMIP environment 
yalmip('clear') 

% Define all variables 
x1 = sdpvar(1);
x2 = sdpvar(1);
x3 = sdpvar(1);
x5 = sdpvar(1);

% Define objective function 
objective = -(0-x5-0);

% Define constraints 
F = ([]);
F=[F,10.68*log(2.5735*x1+4.0464*x2)-9.344*log(2.336*x1+3.24*x2)-(2.5364416*x2-0.993370999999997*x1)/(2.5735*x1+4.0464*x2)-(1.696*log(1.69610217540928*x1+3.24*x2)+0.64*log(0.657731453039811*x1+0.0338737664203932*x2))-(2.87658928949414*x1/(1.69610217540928*x1+3.24*x2)+5.49537104832607*x2/(1.69610217540928*x1+3.24*x2)+0.420948129945479*x1/(0.657731453039811*x1+0.0338737664203932*x2))-2787.49800065313/(229.664+x3)-x5<=-10.164795069335];
F=[F,15.2*log(2.5735*x1+4.0464*x2)-12.96*log(2.336*x1+3.24*x2)-(3.98813184*x2-1.5619104*x1)/(2.5735*x1+4.0464*x2)-3.24*log(1.69610217540928*x1+3.24*x2)-(5.49504*x1/(1.69610217540928*x1+3.24*x2)+10.4976*x2/(1.69610217540928*x1+3.24*x2)+0.0216792105090516*x1/(0.657731453039811*x1+0.0338737664203932*x2))-2766.63/(222.65+x3)-x5<=-11.1422900361581];
F=[F,9.344*log(2.336*x1+3.24*x2)-10.68*log(2.5735*x1+4.0464*x2)+(2.5364416*x2-0.993370999999997*x1)/(2.5735*x1+4.0464*x2)+1.696*log(1.69610217540928*x1+3.24*x2)+0.64*log(0.657731453039811*x1+0.0338737664203932*x2)+2.87658928949414*x1/(1.69610217540928*x1+3.24*x2)+5.49537104832607*x2/(1.69610217540928*x1+3.24*x2)+0.420948129945479*x1/(0.657731453039811*x1+0.0338737664203932*x2)+2787.49800065313/(229.664+x3)-x5<=10.164795069335];
F=[F,12.96*log(2.336*x1+3.24*x2)-15.2*log(2.5735*x1+4.0464*x2)+(3.98813184*x2-1.5619104*x1)/(2.5735*x1+4.0464*x2)+3.24*log(1.69610217540928*x1+3.24*x2)+5.49504*x1/(1.69610217540928*x1+3.24*x2)+10.4976*x2/(1.69610217540928*x1+3.24*x2)+0.0216792105090516*x1/(0.657731453039811*x1+0.0338737664203932*x2)+2766.63/(222.65+x3)-x5<=11.1422900361581];
F=[F,x1+x2==1];
F=[F,1e-006<=x1<=1];
F=[F,1e-006<=x2<=1];
F=[F,40<=x3<=90];
F=[F,0<=x5];

% Solve problem
sol = optimize(F,objective,sdpsettings('solver','bmibnb','allownonconvex',1));
assert(sol.problem==0)
assert(abs(value(objective)-0) <= 1e-2)
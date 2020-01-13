function tests = test_global_st_rv8
tests = functiontests(localfunctions);

function test1(dummy)
% Model generated from st_rv8.gms
% Created 06-Aug-2007 09:16:16 using YALMIP R20070725

% Setup a clean YALMIP environment 
yalmip('clear') 

% Define all variables 
x1 = sdpvar(1);
x2 = sdpvar(1);
x3 = sdpvar(1);
x4 = sdpvar(1);
x5 = sdpvar(1);
x6 = sdpvar(1);
x7 = sdpvar(1);
x8 = sdpvar(1);
x9 = sdpvar(1);
x10 = sdpvar(1);
x11 = sdpvar(1);
x12 = sdpvar(1);
x13 = sdpvar(1);
x14 = sdpvar(1);
x15 = sdpvar(1);
x16 = sdpvar(1);
x17 = sdpvar(1);
x18 = sdpvar(1);
x19 = sdpvar(1);
x20 = sdpvar(1);
x21 = sdpvar(1);
x22 = sdpvar(1);
x23 = sdpvar(1);
x24 = sdpvar(1);
x25 = sdpvar(1);
x26 = sdpvar(1);
x27 = sdpvar(1);
x28 = sdpvar(1);
x29 = sdpvar(1);
x30 = sdpvar(1);
x31 = sdpvar(1);
x32 = sdpvar(1);
x33 = sdpvar(1);
x34 = sdpvar(1);
x35 = sdpvar(1);
x36 = sdpvar(1);
x37 = sdpvar(1);
x38 = sdpvar(1);
x39 = sdpvar(1);
x40 = sdpvar(1);

% Define objective function 
objective = -(-(-0.0004*sqr(x1)-0.0384*x1-0.00285*sqr(x2)-0.3876*x2-0.00155*sqr(x3)-0.1116*x3-0.0038*sqr(x4)-0.4636*x4-0.0044*sqr(x5)-0.044*x5-0.0046*sqr(x6)-0.3588*x6-0.00085*sqr(x7)-0.0272*x7-0.00165*sqr(x8)-0.231*x8-0.0025*sqr(x9)-0.27*x9-0.00385*sqr(x10)-0.308*x10-0.00355*sqr(x11)-0.3692*x11-0.0015*sqr(x12)-0.288*x12-0.0037*sqr(x13)-0.407*x13-0.00125*sqr(x14)-0.1175*x14-0.00095*sqr(x15)-0.1045*x15-0.0048*sqr(x16)-0.1632*x16-0.0015*sqr(x17)-0.135*x17-0.0037*sqr(x18)-0.0666*x18-0.00125*sqr(x19)-0.21*x19-0.00095*sqr(x20)-0.1425*x20-0.0045*sqr(x21)-0.882*x21-0.00245*sqr(x22)-0.3283*x22-0.0004*sqr(x23)-0.0648*x23-0.0048*sqr(x24)-0.0864*x24-0.00485*sqr(x25)-0.4753*x25-0.00025*sqr(x26)-0.046*x26-0.00435*sqr(x27)-0.7917*x27-0.00365*sqr(x28)-0.7008*x28-0.0002*sqr(x29)-0.0384*x29-0.00205*sqr(x30)-0.0164*x30-0.00165*sqr(x31)-0.0891*x31-0.00175*sqr(x32)-0.0945*x32-0.0048*sqr(x33)-0.7296*x33-5e-5*sqr(x34)-0.0023*x34-0.00155*sqr(x35)-0.1488*x35-0.00015*sqr(x36)-0.0189*x36-0.00245*sqr(x37)-0.0343*x37-0.00095*sqr(x38)-0.1045*x38-0.0038*sqr(x39)-0.608*x39-0.0029*sqr(x40)-0.0174*x40));

% Define constraints 
F = ([]);
F=[F,7*x1+4*x6+7*x7+6*x12+9*x13+2*x14+x19+5*x20+x25+5*x26+3*x31+9*x32+5*x33+x38+x39<=330];
F=[F,4*x1+7*x2+7*x7+8*x8+9*x13+3*x14+6*x15+2*x20+6*x21+5*x26+3*x27+4*x32+6*x33+6*x34+6*x39+3*x40<=425];
F=[F,x2+6*x3+8*x8+7*x9+9*x14+8*x15+8*x16+6*x21+5*x22+4*x27+2*x28+4*x33+7*x34+9*x35+2*x40<=430];
F=[F,x3+5*x4+9*x9+6*x10+4*x15+9*x16+6*x17+7*x22+9*x23+8*x28+3*x29+7*x34+4*x35+3*x36<=405];
F=[F,4*x4+7*x5+3*x10+6*x11+2*x16+8*x17+5*x18+2*x23+9*x24+6*x29+4*x30+3*x35+6*x36+6*x37<=355];
F=[F,5*x5+5*x6+7*x11+4*x12+4*x17+6*x18+2*x19+4*x24+2*x25+x30+4*x31+4*x36+3*x37+4*x38<=275];
F=[F,2*x1+3*x6+3*x7+5*x12+9*x13+9*x18+x19+4*x20+6*x25+5*x26+3*x31+7*x32+3*x37+5*x38+4*x39<=345];
F=[F,9*x1+7*x2+3*x7+6*x8+7*x13+2*x14+x19+x20+4*x21+5*x26+2*x27+6*x32+5*x33+4*x38+4*x39+3*x40<=345];
F=[F,6*x1+3*x2+4*x3+2*x8+7*x9+3*x14+7*x15+2*x20+3*x21+2*x22+6*x27+x28+6*x33+7*x34+9*x39+2*x40<=350];
F=[F,2*x2+8*x3+9*x4+x9+x10+6*x15+x16+6*x21+7*x22+6*x23+3*x28+2*x29+7*x34+6*x35+5*x40<=350];
F=[F,3*x3+6*x4+5*x5+6*x10+5*x11+8*x16+9*x17+6*x22+4*x23+x24+5*x29+2*x30+5*x35+4*x36<=345];
F=[F,3*x4+3*x5+9*x6+3*x11+8*x12+9*x17+4*x18+4*x23+3*x24+6*x25+6*x30+x31+6*x36+2*x37<=335];
F=[F,8*x5+2*x6+4*x7+8*x12+9*x13+3*x18+8*x19+x24+8*x25+8*x26+3*x31+x32+5*x37+7*x38<=375];
F=[F,x1+9*x6+x7+4*x8+9*x13+6*x14+6*x19+7*x20+x25+5*x26+7*x27+x32+8*x33+9*x38+2*x39<=380];
F=[F,3*x1+9*x2+4*x7+2*x8+x9+3*x14+9*x15+7*x20+7*x21+8*x26+7*x27+5*x28+4*x33+x34+6*x39+9*x40<=425];
F=[F,9*x2+6*x3+9*x8+5*x9+6*x10+6*x15+9*x16+5*x21+7*x22+8*x27+7*x28+x29+x34+8*x35+4*x40<=455];
F=[F,9*x3+9*x4+4*x9+2*x10+7*x11+4*x16+8*x17+3*x22+2*x23+2*x28+7*x29+3*x30+4*x35+9*x36<=365];
F=[F,5*x4+6*x5+8*x10+9*x11+6*x12+6*x17+4*x18+3*x23+3*x24+x29+9*x30+2*x31+4*x36+7*x37<=365];
F=[F,5*x5+7*x6+2*x11+8*x12+x13+9*x18+8*x19+6*x24+x25+4*x30+9*x31+7*x32+4*x37+6*x38<=385];
F=[F,x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17+x18+x19+x20+x21+x22+x23+x24+x25+x26+x27+x28+x29+x30+x31+x32+x33+x34+x35+x36+x37+x38+x39+x40<=400];
F=[F,0<=x1];
F=[F,0<=x2];
F=[F,0<=x3];
F=[F,0<=x4];
F=[F,0<=x5];
F=[F,0<=x6];
F=[F,0<=x7];
F=[F,0<=x8];
F=[F,0<=x9];
F=[F,0<=x10];
F=[F,0<=x11];
F=[F,0<=x12];
F=[F,0<=x13];
F=[F,0<=x14];
F=[F,0<=x15];
F=[F,0<=x16];
F=[F,0<=x17];
F=[F,0<=x18];
F=[F,0<=x19];
F=[F,0<=x20];
F=[F,0<=x21];
F=[F,0<=x22];
F=[F,0<=x23];
F=[F,0<=x24];
F=[F,0<=x25];
F=[F,0<=x26];
F=[F,0<=x27];
F=[F,0<=x28];
F=[F,0<=x29];
F=[F,0<=x30];
F=[F,0<=x31];
F=[F,0<=x32];
F=[F,0<=x33];
F=[F,0<=x34];
F=[F,0<=x35];
F=[F,0<=x36];
F=[F,0<=x37];
F=[F,0<=x38];
F=[F,0<=x39];
F=[F,0<=x40];

% Solve problem
sol = optimize(F,objective,sdpsettings('solver','bmibnb','allownonconvex',1));
assert(sol.problem==0)
assert(abs(value(objective)--132.6616) <= 1)
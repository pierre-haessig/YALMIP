function tests = test_global_ex14_1_7
tests = functiontests(localfunctions);

function test1(dummy)

yalmip('clear')

sdpvar x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 objvar; 

F = ([]);

F = F + (  - x10 + objvar == 0);

F = F + ( (1 - x1*x2)*x3*(exp(x5*(0.485 + (-0.0052095*x7) - 0.0285132*x8)) - 1) +      23.3037*x2 - x10 <= 28.5132);

F = F + ( (1 - x1*x2)*x3*(exp(x5*(0.752 + (-0.0100677*x7) - 0.1118467*x8)) - 1) +      101.779*x2 - x10 <= 111.8467);

F = F + ( (1 - x1*x2)*x3*(exp(x5*(0.869 + (-0.0229274*x7) - 0.1343884*x8)) - 1) +      111.461*x2 - x10 <= 134.3884);

F = F + ( (1 - x1*x2)*x3*(exp(x5*(0.982 + (-0.0202153*x7) - 0.2114823*x8)) - 1) +      191.267*x2 - x10 <= 211.4823);

F = F + ( (-(1 - x1*x2)*x3*(exp(x5*(0.485 + (-0.0052095*x7) - 0.0285132*x8)) - 1))      - 23.3037*x2 - x10 <= -28.5132);

F = F + ( (-(1 - x1*x2)*x3*(exp(x5*(0.752 + (-0.0100677*x7) - 0.1118467*x8)) - 1))      - 101.779*x2 - x10 <= -111.8467);

F = F + ( (-(1 - x1*x2)*x3*(exp(x5*(0.869 + (-0.0229274*x7) - 0.1343884*x8)) - 1))      - 111.461*x2 - x10 <= -134.3884);

F = F + ( (-(1 - x1*x2)*x3*(exp(x5*(0.982 + (-0.0202153*x7) - 0.2114823*x8)) - 1))      - 191.267*x2 - x10 <= -211.4823);

F = F + ( (1 - x1*x2)*x4*(exp(x6*(0.116 + 0.0233037*x9 - 0.0052095*x7)) - 1) -       28.5132*x1 - x10 <= -23.3037);

F = F + ( (1 - x1*x2)*x4*(exp(x6*(0.101779*x9 - 0.0100677*x7 - 0.502)) - 1) -       111.8467*x1 - x10 <= -101.779);

F = F + ( (1 - x1*x2)*x4*(exp(x6*(0.166 + 0.111461*x9 - 0.0229274*x7)) - 1) -       134.3884*x1 - x10 <= -111.461);

F = F + ( (1 - x1*x2)*x4*(exp(x6*(0.191267*x9 - 0.0202153*x7 - 0.473)) - 1) -       211.4823*x1 - x10 <= -191.267);

F = F + ( 28.5132*x1 - (1 - x1*x2)*x4*(exp(x6*(0.116 + 0.0233037*x9 - 0.0052095*x7)      ) - 1) - x10 <= 23.3037);

F = F + ( 111.8467*x1 - (1 - x1*x2)*x4*(exp(x6*(0.101779*x9 - 0.0100677*x7 - 0.502)      ) - 1) - x10 <= 101.779);

F = F + ( 134.3884*x1 - (1 - x1*x2)*x4*(exp(x6*(0.166 + 0.111461*x9 - 0.0229274*x7)      ) - 1) - x10 <= 111.461);

F = F + ( 211.4823*x1 - (1 - x1*x2)*x4*(exp(x6*(0.191267*x9 - 0.0202153*x7 - 0.473)      ) - 1) - x10 <= 191.267);

F = F + ( x1*x3 - x2*x4 == 0);


F = F + (0 <= [x1 x2 x3 x4 x5 x6 x7 x8 x9] <= 10);

optimize(F,objvar,sdpsettings('solver','bmibnb','bmibnb.upper','none','allownon',1,'bmibnb.maxiter',10))
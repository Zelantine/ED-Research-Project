%Test 1 : tentons de tracer Wa, la zone de dépletion N+N

%Variables :
k = physconst('Boltzmann')/(1.6*10^-19);
t = 300; %eV
e = 1; %eV
nd = 8*10^18; %cm-3
ndplus = 2*10^16; %cm-3
eqvh = '(e*x)/(k*t) + log((nd/ndplus)+0.5*((e*x)/(k*t))^2) = 0' ;
vh = solve('eqvh',x);
%myfun = @(x) (e*x)/(k*t) + log((nd/ndplus)+0.5*((e*x)/(k*t))^2);
%X=fzero ( @(x) myfun(x), 0.5 );

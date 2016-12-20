%Test 1 : tentons de tracer Wa, la zone de dépletion N+N

%Variables :
k = physconst('Boltzmann');
T = 300; %K
e = 1.6*10^-19; %C
nd = 8*10^22; %m-3
ndplus = 2*10^23; %m-3
ratio = ndplus/nd
epsilon = 12.9
%eqvh = '(e*V)/(k*t) + log((nd/ndplus)+0.5*((e*V)/(k*t))^2) = 0' ;
%vh = solve('eqvh',V);
myfun = @(x) (e*x)/(k*t) + log((1/ratio)+0.5*((e*x)/(k*t))^2);
Vh=abs(fzero ( @(x) myfun(x), 0.5 )); %Potential drop across high doping side, negative hence abs

%Wa, zone de dépletion N+/n, function of ndplus
%ratio = [0.00:0.05:1]; %range du ratio
%Wa = sqrt(2)*sqrt((epsilon*k*T)/(e^2*nd))*atan(((e*Vh)/(sqrt(2)*k*T))*sqrt(ratio));
range_ndplus = [8.10^24:10^16:8.10^25]; %ndplus variation

Wa = sqrt(2)*sqrt((epsilon*k*T)/(e^2*nd))*atan(((e*Vh)/(sqrt(2)*k*T))*sqrt(range_ndplus/nd));
plot(range_ndplus,Wa);
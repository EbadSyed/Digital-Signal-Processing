%% 34.
% A system is described by the difference equation
% 
% *y[n] = x[n] − 0.9y[n − 1] + 0.81y[n − 2]. (2.121)*
% 
% Using MATLAB determine and plot
% 
% (a) Impulse response of the system.
% 
% (b) Step response of the system.
% 
% (c) Identify the transient response and the steady-state response in (b).
% 
% 
% 
% *a*

a = [1 0.9 0.81];
b = [1];

figure(1);
impz(b,a)
%% 
% *b*

figure(2);
stepz(b,a);
%% 
% *c*
% 
% For samples 0-55 can be classified as transient response which can be shown 
% in plot as varying amplitude. While after that the the amplitude becomes constant 
% and can be classified as steady state response. 

sysX = tf(b,a,0.01)
figure(3);
step(sysX)
stepinfo(sysX)
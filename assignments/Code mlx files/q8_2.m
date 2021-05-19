%% *A lowpass digital filter’s specifications are given by:*
%% *𝜔𝑠 = 0.4𝜋 𝑟𝑎𝑑𝑖𝑎𝑛𝑠, 𝜔𝑝 = 0.25 𝑟𝑎𝑑𝑖𝑎𝑛𝑠, 𝐴𝑠 = 50 𝑑𝐵, 𝐴𝑝 = 0.25 𝑑𝐵*

% Digital Filter Specifications:
wp = 0.25*pi; % digital Passband freq in Hz
ws = 0.4*pi; % digital Stopband freq in Hz
Ap = 0.25; % Passband ripple in dB
As = 50; % Stopband attenuation in dB

Td = 1;
% *a. Using an impulse invariance approach, find H(z) that satisfies the above specifications with monotonic passband and stopband.*
% 
% 
% Design the analog lowpass filter Hc(s).

[N,Omegac] = buttord(wp,ws,Ap,As,'s')
[C,D] = butter(N,Omegac,'s')
%% 
% We obtain the desired digital filter H(z) = B(z)/A(z) using the coefficients 
% in the arrays B and A.

[B,A] = impinvar(C,D,1/Td)
% *b. Provide design plots in the form of log-magnitude, phase, group-delay, and*
% *impulse responses.*

freqz(B,A)
impz(B,A)
grpdelay(B,A)
%% 2.22
% A downsampler system is defined in (2.24). Consider the sequence x[n] = cos(0.1πn)
% 
% for −30 ≤ n ≤ 30. Using the stem function plot
% 
% (a) x[n] versus n.
% 
% (b) A down sampled signal y[n] for M = 5.
% 
% (c) A down sampled signal y[n] for M = 20.
% 
% (d) How does the downsampled signal appear? Compressed or expanded.
% 
% *y[n] = H{x[n]} = x[nM]  (2.24)*
% 
% *a)*

n = [-30:30];
xn = cos(0.1*pi*n);

stem(n,xn)
title('x[n] vs n'); xlabel('n') ; ylabel('x[n]');
%% 
% *b)*

n5d = downsample(n,5);
xn5d = downsample(xn,5);

stem(n5d,xn5d) 
title('Downsample M=5'); xlabel('n') ; ylabel('y[n]');
%% 
% *c)*

n20d = downsample(n,20);
xn20d = downsample(xn,20);

stem(n20d,xn20d) 
title('Downsample M=20'); xlabel('n') ; ylabel('y[n]');
%% 
% *d)  Compressed*
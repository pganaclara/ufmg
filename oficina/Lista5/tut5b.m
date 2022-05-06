clear; close all; clc;

syms z

H = 1/(1 - 1.8*z^(-1));
h = iztrans(H)

n = 0:49;
hn = subs(h,n);
stem(n, hn);
xlabel('n');
ylabel('h[n]');
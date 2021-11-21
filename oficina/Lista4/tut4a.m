clear
clc
close all

syms s t zeta wn
H = (wn^2)/(s^2 + 2*zeta*wn*s + wn^2);
h = ilaplace(H,t);
pretty(h);
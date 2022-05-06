clear; clc; close all;

A = zpk([], [0 -1 -2], 1);
B = 1;

rlocus(A*B);
title('Lugar das raizes');
xlabel('\sigma (s^-1)');
ylabel('j\omega (s^-1)');
axis([-1.1 1 -0.5 0.5]);
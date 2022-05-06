clear; clc; close all;

R = 10E3;
C = 10E-9;
A = 1;

w0 = 1/(R*C);
f0 = w0/(2*pi);

Num = 1;
Den = [R*C 1];

H1 = tf(Num,Den);
B = H1^3;

figure(1);
rlocus(A*B);
title('Lugar das raizes');
xlabel('\sigma (s^-1)');
ylabel('j\omega (s^-1)');
ylim([-1.1*w0 1.1*w0]);
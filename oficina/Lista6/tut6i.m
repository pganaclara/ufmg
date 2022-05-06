clear; clc; close all;

R = 10E3;
C = 100E-9;
A = 1;

Num = 1;
Den = [R*C 1];
H1 = tf(Num,Den);
B = H1^3;

K = 20;
H = feedback(K*A,B);

step = 1E-3/10;
t = 0:step:50e-3;

r = zeros(size(t));
r(1) = 0.01;

v0 = lsim(H, r, t);

plot(t, v0);
xlabel('tempo (s)'); ylabel('magnitude (V)');
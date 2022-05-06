clear; clc; close all;

num1 = 1; den1 = [1 5];
A = tf(num1, den1);

num2 = 1; den2 = [1 3];
B = tf(num2, den2);

K = 20;

H = (K*A) / (1 + K*A*B);
figure(1);
subplot(1,2,1);
pzmap(H);

subplot(1,2,2);
step(H);
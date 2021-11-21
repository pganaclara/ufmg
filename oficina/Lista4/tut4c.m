clear
clc
close all
syms s t zeta wn

% domínio de Laplace
H = ((wn^2)/(s^2 + 2*zeta*wn*s + wn^2))/s;

% resposta ao degrau no domínio do tempo
st = ilaplace(H,t);

figure(1)
hold on;
t1 = 0:0.1:20;

h1 = subs(st, {t, wn, zeta}, {t1 1 0.1});
plot(t1, h1);
h1 = subs(st, {t, wn, zeta}, {t1 1 0.8});
plot(t1, h1);
h1 = subs(st, {t, wn, zeta}, {t1 1 1.1});
plot(t1, h1);
xlabel('\omega [rad/s]');
legend('\zeta = 0.1', '\zeta = 0.8', '\zeta = 1.1');
hold off;
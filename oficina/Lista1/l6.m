 t = 0:pi/100:2*pi;

x1 = cos(t).*sin(20*t);
x2 = cos(t);
x3 = sin(20*t);

plot(t,x1,t,x2,'--', t,x3,':')
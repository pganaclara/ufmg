% a identidade trigonometrica a*cos(w0*t)+b*sin(w0*t)
% tem a = C*cos(theta) e b = -C*sen(theta)
% C = sqrt(a^2+b^2) (magnitude)
% e theta = tan^-1(b/a) (angulo)

a = -3; b = 4;
[theta, C] = cart2pol(a,-b)
% theta = -2.214297435588181
% C = 5

theta_deg = rad2deg(theta)
%theta_deg = -126.8699

%x(t) = 5*cos(w0*t-2.2143)
%Usando w0 = 2 e -2 < t < 2
t = -2:0.01:2;
x = 5*cos(2*t-2.2143);
plot(t,x)
clc; clear; close all;
a = 6;
b = -6; c = -11; d = -6;
T = 10;

set_param('mod7b/Int3', 'InitialCondition', '1');
sim('mod7b', T);
figure(1);
plot(tout, yout(:,1));
hold on;
plot(tout, yout(:,2));
legend('u(t)', 'y(t)'); title('mod7b.slx');
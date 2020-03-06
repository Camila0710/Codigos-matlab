clc, clear, close all
t=-3:0.0001:8;
f=-2.*heaviside(t+1)+2.*(t+1).*heaviside(t+1)-2.*(t-1).*heaviside(t-1)+heaviside(t-2)-(t-2).*heaviside(t-2)...
+(t-4).*heaviside(t-4)-(t-5).*heaviside(t-5)+(t-7).*heaviside(t-7)+heaviside(t-7);
plot(t,f,'linewidth',2);
axis([-3 8 -3 4]);
title('PUNTO 1= -2u(t+1)+2r(t+1)-2r(t-1)+r(t-2)-u(t-2)+r(t-4)-r(t-5)+r(t-7)+u(t-7)');
grid on;
clc, clear, close all;
t=-5:0.0001:9;
y1=tri(t,2,-1);
y2=tri(t/2,1,-1);
y3=impulse(t,+3);
y4=ustep(t,-3);
y5=ramp(3*t,1,-6);
y=y1+y2+y3+y4+y5;
plot(t,y,'linewidth',2);
axis([-4.5 6 -3 12]);
title('y(t)=2tri(t-1)+tri(t/2-1)+impul(t+3)+u(t-3)+ramp(3t-6)')
grid on;



function y = ramp(t,m,ad)
                                                                            % generacion de la señal rampa 
                                                                            % t: tiempo evaluado
                                                                            % m: pendiente de la rampa
                                                                            % ad : retardo (negativo), avance (positivo)
                                                                            % Use: y = ramp(t,m,ad)
N= length(t);
y = zeros(1,N);
    for i = 1:N,
        if t(i)>= -ad,
            y(i) =m* (t(i)+ad);
        end
    end
end

function y = ustep(t,ad)
                                                                            % Generacion del escalon unitario
                                                                            % t: tiempo
                                                                            % ad : retardo (negativo), avance (positivo)
                                                                            % Use: y = ustep(t,ad)
N= length(t);
y = zeros(1,N);
    for i = 1:N,
        if t(i)>= -ad,
            y(i) = 1;
        end
    end
end

function y = impulse(t,ad)
                                                                            % Generacion del escalon unitario
                                                                            % t: tiempo
                                                                            % ad : retardo (negativo), avance (positivo)
                                                                            % Use: y = ustep(t,ad)
N= length(t);
y = zeros(1,N);
    for i = 1:N,
        if t(i)== -ad,
            y(i) = 1000;
        end
    end
end
function y = tri(t,m,ad)
    y = m*( ramp(t,m,ad+1) - 2*ramp(t,m,ad) + ramp(t,m,ad-1) );
end
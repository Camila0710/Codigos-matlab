clc, clear, close all;
t=-5:0.0001:9;
y1=3*ustep(-t,3);
y=y1;
plot(t,y,'linewidth',2);
axis([-1 10 -1 4]);

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
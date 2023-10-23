clear;
clc;
b = 550;
RR = 1;




vec_aproksim = vec_aproks(b);
[aproksimacija, odstopek, matrika_tock] = aproks(b);
disp(['Stevilo vzetih tock: ', num2str(b)]);
disp(['Ocenjena vrednost: ', num2str(aproksimacija)]);
disp(['Napaka: ', num2str(odstopek)]);
matrika = matrika_tock;
krog(RR)
hold on;
xx = matrika(:, 1);
yy = matrika(:, 2);
oddaljenost = sqrt(xx.^2 + yy.^2);
Notr = oddaljenost <= RR;
Zunej = oddaljenost > RR;
scatter(xx(Notr), yy(Notr), 50, 'red', 'filled');
scatter(xx(Zunej), yy(Zunej), 50, 'yellow', 'x');
title('Naključno generirane točke na krožnici z lokom');
xlabel('X-os');
ylabel('Y-os');
legend('Znotraj krožnice', 'Zunaj krožnice', 'Krožnica');


function krog(radij)
    phi = linspace(0, 2*pi, 1000);
    xx = radij * cos(phi);
    yy = radij * sin(phi);
    figure;
    plot(xx, yy, 'blue', 'LineWidth', 4);
    axis equal;
end





function aproksimacije = vec_aproks(y)
    V = zeros(y, 1);
    for k = 1:y
        V(k) = aproks(k);
    end
    aproksimacije = V;
end







function [aproksimacija, odstopek, matrika_tock] = aproks(xx)
    MM1 = mcc_pi(xx);
    MM = MM1(:, 1:2);
    UU = 0;
    for i = 1:xx
        if MM(i, 1:2) ~= 0
            UU = UU + 1;
        end
    end
    aproksimacija = 4*UU/xx;
    odstopek = abs(pi - aproksimacija);
    matrika_tock = MM1(:, 3:4);
end


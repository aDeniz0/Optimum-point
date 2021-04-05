clc
clear

[x,fonkdeger] = fminunc(@(x)cos(0.5*x(2)*sin(0.5*x(1))*x(1).^3)-10*x(1)*x(2)+0.2*x(2)^2+1,[1,0])

x=-2:0.1:4;
y=-2:0.1:4;

[X,Y]=meshgrid(x,y);
Z = cos(0.5.*Y+sin(0.5.*X).*X.^3-10.*X.*Y+0.2.*Y.^2+1);
meshc(X,Y,Z)
grid on
hold on
plot3(x(1),x(2),fonkdeger,"k-","markersize",2)
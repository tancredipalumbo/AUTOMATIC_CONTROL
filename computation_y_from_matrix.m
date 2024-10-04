clc
clear all
close all

A = [-3 2; -2 -3];
B = [1 0]';
C = [0 1];
D = 0;
x0 = [1 1]';
s = tf('s');
U = 1/s;
tol = 1e-3;

X = minreal(inv(s * eye(2) - A)* (x0 + B * U), tol);
Y = minreal(C*inv(s*eye(2)-A)*(B*U+x0), tol); %Y=C*X+D*U;

Y
zpk(Y)

[num, den]=tfdata(Y, 'v')
[res, pol]=residue(num, den)

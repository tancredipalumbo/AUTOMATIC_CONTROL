clc
clear all
close all

s = tf('s');
A = [0 1; -1 -1];
B = [4 0; 10 1];
C = [1 0];
D = 0
X_0 = [0, 0]';
U = [0 2]';
tol = 1e-3;

X = zpk(minreal(inv(s*eye(2)-A)*(X_0+B*U), tol));
Y = zpk(minreal(C*X, tol));

[num, den] = tfdata(Y, 'v')
[res, pol] = residue(num, den)

phi = angle(res(1))
mag = abs(res(1))
p = real(pol(1))
f = imag(pol(1))



clc
clear all
close all

s = tf('s');
A = [1 2; 4 3];
B = [5 8]';
C = [-1 3];
D = 8;
X_0 = [2 2]';
U = 2/s;

tol = 1e-3;
X = zpk(minreal(inv(s*eye(2)-A)*(X_0+B*U), tol));
Y = zpk(minreal(C*inv(s*eye(2)-A)*(X_0+B*U)+D*U, tol));

[numX_1, denX_1] = tfdata(X(1), 'v');
[numX_2, denX_2] = tfdata(X(2), 'v');
[numY, denY] = tfdata(Y, 'v');
[resX_1, polX_1] = residue(numX_1, denX_1)
[resX_2, polX_2] = residue(numX_2, denX_2)
[resY, polY] = residue(numY, denY)
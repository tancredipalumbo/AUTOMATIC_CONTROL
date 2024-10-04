clc
clear all
close all

A = [0 1; -2 -3];
B = [1 0]';
x0 = [2 2]';
s = tf('s'); %tf is transfer function
U = 2/s;
tol =1e-3; %tolerance
X = minreal(inv(s * eye(2) - A)* (x0 + B * U), tol) %eye is idendity matrix

 %zpk by using this we can see poles (zeros) of denominator

X
[num, den]=tfdata(X(1), 'v') %give numerator and denominator as a list of coefficient

[res, pol]=residue(num, den) %compute the partial fraction expantion, ressidue in numerator and denominator s+pol
clc
clear all
close all
format compact

s = tf('s');

A = [0 0 0; 0 0 1; 0 0 -5];
Q = minreal(zpk(inv(s*eye(3)-A))); %Xzi(t)
Q;
%or easier
eig(A)
roots(minpoly(A))
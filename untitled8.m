clc
clear all
close all
format compact

A = [0 0 0; 0 0 0; 0 0 -1]

eig(A)
roots(minpoly(A))
return
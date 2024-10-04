clc
close all
clear all

A = [0 05 0; 0 0 0; 0 0 -1];
eig(A)
roots(minpoly(A))
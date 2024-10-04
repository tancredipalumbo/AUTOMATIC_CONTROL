clc
clear all
close all
format compact

s = tf('s');

A = [0 1 0; -1 0 0; 0 0 -1];
eig(A)
roots(minpoly(A))
clc
clear all
close all

A = [0 1 0; 0 0 0; 0 0 -1]
x0=[1 1 1]'
eig(A)
minpoly(A)
roots(minpoly(A)) %minimal multiplicity mu conta quante volte appare un numero uscito da roots(minpoly())
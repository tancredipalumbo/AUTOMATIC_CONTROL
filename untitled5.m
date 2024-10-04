clc
clear all
close all

s=tf('s');

A = [-3 2; -2 -3];
B = [1 0]';
C = [0 1];
D = 0;
X0=[1 1]';

sys = ss(A,B,C,D);
H = tf(sys)
eig(A)

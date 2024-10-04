clc
clear all
close all

A = [-3 2; -2 -3]
B = [1 0]'
C = [0 1]
D = 0
s = tf('s')
 
my_system = ss(A,B,C,D)
H=tf(my_system)
H_byhand = minreal(C*inv(s*eye(2)-A)*B+D, 1e-3)

sys_from_H = ss(H)
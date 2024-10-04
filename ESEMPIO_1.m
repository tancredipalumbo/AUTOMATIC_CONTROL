clc
clear all
close all

s = tf('s')
H = (s+5)/(s^2+3*s+2)

zeros_H = zero(H)
poles_H = pole(H)
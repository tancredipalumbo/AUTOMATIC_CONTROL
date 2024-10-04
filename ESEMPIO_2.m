clc
clear all
close all

s = tf('s')
H = (4*(2*s+6)/(s^2+3*s+2))
zpk(H) %zero pole gain
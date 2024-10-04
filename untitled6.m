clc
clear all
close all

s=tf('s');

H = (s^2+3*s+1)/(s^3+s^2+s+1)

sys=ss(H)
clc
clear all
close all

tol = 1e-3; 
s = tf('s'); 
U = 2/(s^2); % Definizione della funzione di trasferimento U
H = (2*s + 1)/((s + 4)^2); % Definizione della funzione di trasferimento H
Y = minreal(H * U, tol) % Moltiplicazione di H e U e semplificazione del risultato
zpk(Y)

[num_Y, den_Y] = tfdata(Y, 'v')
[r, p] = residue(num_Y, den_Y)
clc
clear all
close all

M = 6.0;
m = 1.5;
L= 1.0;
I= 1;
kv= 0.02;
b= 0.02;
g=9.81;

x1 = m^2*L^2-(M+m)*(I+m*L^2);
x2 = -(M+m)*kv-b*(I+m*L^2);
x3 = (M+m)*(m*g*L)-kv*b;
x4 = b*m*g*L;

coef = [x1 x2 x3 x4];
roots(coef)

tr = tf([m*L 0],[x1 x2 x3 x4]);
p = pole(tr)
impulse(tr)
rlocus(tr)
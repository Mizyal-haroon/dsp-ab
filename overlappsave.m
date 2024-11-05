clc;
clear all;
close all;
x=[1 1 0 0 0 1 1 -1 1];
h=[1 1 1 0 0];
x1=[0 0 x(1:3)];
x2=[x1(4:5) x(4:6)];
x3=[x2(4:5) x(7:9)];
y1=cconv(x1,h);
y2=cconv(x2,h);
y3=cconv(x3,h);
disp(y1);
disp(y2);
disp(y3);


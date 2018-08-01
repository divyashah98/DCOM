clc;
clear all;
close all;

m = input('Enter the number of bits:     ');
x = randint(1000,1,m);

y = qammod(x,m);

y1 = awgn(y,8);
scatterplot(y1);

y2 = qamdemod(y1,m);

[number,ratio] = symerr(y2,x)
eyediagram(y2,m)

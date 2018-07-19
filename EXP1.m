clc;
clear all;
close all;

M = 3;
N = 3;

q = [0.24, 0.06, 0; 0, 0.4, 0; 0, 0.09, 0.21];

for i = 1:M
    w = 0;
    for j = 1:N
        P(i) = w + q(i, j);
        w = P(i);
    end
end

disp ('P(X) =');
disp (P)

for j = 1:N
   w1 = 0;
    for i = 1:M
        P1(j) = w1 + q(i, j);
        w1 = P1(j);
    end
     
end

disp ('P(Y) =');
disp (P1)

w2=0;
for i = 1:M
    S = P(i) * (log(1/P(i))/log(2)) + w2;
    w2 = S;
end

disp ('H(X) =')
disp(S)

w3=0;
for i = 1:M
    S1 = P1(i) * (log(1/P1(i))/log(2)) + w3;
    w3 = S1;
end

disp ('H(Y) =')
disp(S1)

w4 = 0;
for i = 1:M
    for j = 1:N
        if (q(i, j) ~= 0)
        D = q(i, j) * (log(1/q(i, j)))/(log(2)) + w4;
        w4 = D;
        end
    end
end

disp ('H(XY) =');
disp (D)

for i = 1:3
    for j = 1:3
E(i,j) = q(i,j)/P1(j);
    end
end

disp('P(X/Y) =')
disp(E)

w5 = 0;
for i = 1:M
    for j = 1:N
        if (q(i, j) ~= 0)
        D1 = q(i, j) * (log(1/E(i, j)))/(log(2)) + w5;
        w5 = D1;
        end
    end
end

disp ('H(X/Y) =')
disp (D1)

I = S - D1
disp ('I(XY) =')
disp (I)

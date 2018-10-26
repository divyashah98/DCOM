g1=[1 0 1];
g2=[1 1 1];

m=[1 0 0 1 1]

v1=conv(m,g1)
v2=conv(m,g2)

v=vertcat(v1,v2)
vf=mod(transpose(v),2)

G1=poly2sym(g1)
G2=poly2sym(g2)

M=poly2sym(m)
V1=M*G1
V2=M*G2

K1=sym2poly(V1)
K2=sym2poly(V2)

K=vertcat(K1,K2)

Kf=mod(transpose(K),2)

% clc;
% close all;
% clear all;
G=double(input('Enter G='));
disp(G)
ik=[];
for i=1:3
    for j=4:6
        p(i,j-3)=G(i,j);
    end
end

disp(p)

for i=1:3
    for j=1:3
        ik(i,j)=G(i,j);
    end
end

disp(ik)

h=[transpose(p),ik]
disp(h)

m=[0 0 1]

c=m*G;
disp('codeword')
disp(c)

r=[1 0 1 1 1 0]

H=gen2par(G);
HT=transpose(H);
s=r*HT;
s1=mod(s,2)

for i=1:6
    if(HT(i,1:3)==s1)
    errorbit=i
    r(i)=1-r(i)
    correctedcodeword=r;
    end
  end



    


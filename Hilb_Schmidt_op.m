syms x y

u = 6

k1 = y*(1-x);
I1 = [0,x];
k2 = x*(1-y);
I2 = [x,1];

v = int(u*k1,y,I1) + int(u*k2,y,I1)

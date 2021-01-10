% Normy v prostorech
syms x

f3(x) = 4*x^2 - 12*x - 40
I3 = [-10,10];

cf3 = func_on_I(f3,I3)
C_3_f3 = cf3.C_p_func(3)

% Skalarni souciny v prostoru
syms x

f = 8*x + 2;
g = x^2 + 2*x;
h = 1;
Ifgh = [0,2]

cfh = dot_on_I(f,h,Ifgh)
cfh.uv_C_2

cfg = dot_on_I(f,g,Ifgh)
cfg.uv_C_2
cfg.uv_C12
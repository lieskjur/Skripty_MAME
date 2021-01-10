disp('Tenzor deformace numericky')

J_u =	[	0.035	0.02	0.03;
			0.045	0.01	0.0005;
			0.035	0.005	0.005];
%%%
epsi = (J_u+J_u')/2 % Tenzor male deformace
E = ( J_u+J_u' + J_u'*J_u )/2 % Tenzor konecne deformace


disp('Tenzor male deformace - symbolicky')

syms x y z real
u = [2*x*y-1.2*z;2*x*z;2*y*z-4*x*y]
%%%
J_u = jacobian(u,[x,y,z])
epsi = (J_u+J_u')/2
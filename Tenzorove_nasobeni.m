s_sqrt = @(x) sym(sqrt(x))

A = [ 	s_sqrt(3)/2		-1/4			s_sqrt(3)/4
		0				s_sqrt(3)/2		1/2
		-1/2			-s_sqrt(3)/4	3/4			]

L = [	2	3	0
		0	3	0
		0	0	4	]


[E,E_d] = tenz2_nasobeni(A,A')

[LA,LA_d] = tenz2_nasobeni(L,A')
[ALA,ALA_d] = tenz2_nasobeni(A,LA)
%double(A*L*A')

function [C,C_d] = tenz2_nasobeni(A,B)
	for i = 1:3
		for j = 1:3
			for k = 1:3
				C_d(i,j,k) = A(i,k)*B(k,j);
			end
		end
	end
	C_d;
	C = double(sum(C_d,3));
end
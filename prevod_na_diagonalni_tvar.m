e = sym('e',[3,3])

% ZADANI
L = [	3	2	0
		2	16	-1
		0	-1	3	];
e(:,1) = [1/sqrt(5);0;2/sqrt(5)];

% Overeni ze se jedna o vlastni vektor
e1xe1 = cross(L*e(:,1),e(:,1))

% Dopocet vl. cisla
L*e(:,1)
llamb(1) = e(:,1)'*L*e(:,1)

% MANUALNI DOTVORENI BAZE b'
e(:,2) = [2/sqrt(5);0;-1/sqrt(5)];
e(:,3) = [0;1;0];

% Transformace tenzoru do baze b'
Le = L*e
eLe = e'*L*e

% Sub determinant
syms lamb
D = eLe - eye(3)*lamb

% dopocet zbylych vl. cisel
eqn = (lamb - llamb(1))*det(D(2:3,2:3)) == 0
llamb = solve(eqn)
llamb = double(llamb)

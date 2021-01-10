% Zadane hodnoty v bodech
q_e1 = 2;
q_e2 = 4;
q_e3 = 5;

q_e1e2 = 8;
q_e2e3 = 11;
q_e3e1 = 8;

% Urceni tenzoru
A = zeros(3);
A(1,1) = q_e1;
A(2,2) = q_e2;
A(3,3) = q_e3;
A(1,2) = (q_e1e2-A(1,1)-A(2,2))/2;
A(2,3) = (q_e2e3-A(2,2)-A(3,3))/2;
A(3,1) = (q_e3e1-A(3,3)-A(1,1))/2;
A(2,1) = A(1,2);
A(3,2) = A(2,3);
A(1,3) = A(3,1);
A

% Aplikace bilin formy
I = eye(3);
a_e1e2 = I(:,1)'*A*I(:,2)
a_e1e3 = I(:,1)'*A*I(:,3)
a_e2e3 = I(:,2)'*A*I(:,3)
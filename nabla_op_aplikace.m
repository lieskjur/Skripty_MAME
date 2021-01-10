% Aplikace Nabla operatoru
syms x y z real

% vekt. funkce
f = [	x^3+2*y^2
		2*y^3+3*z^2
		z^4-x^2		];

rot_f = curl(f)
div_f = divergence(f) % ker(div) = rot
J_f = jacobian(f)

% skalarni funkce
f = exp(4*x+2*y^2+3*z)

grad_f = gradient(f)
curl_grad_f = curl(grad_f) % ker(curl) = grad
div_grad_f = divergence(grad_f)
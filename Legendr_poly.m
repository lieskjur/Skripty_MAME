syms x
phi = @(x,n) 1/(2^n*factorial(n))*diff((x^2-1)^n,x,n)
for i = 1:4
	pphi(i) = phi(x,i-1);
end; pphi

B = int(pphi'*pphi,[-1,1])
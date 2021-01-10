syms p q ny

eqn = 1/p + 1/ny == 1;
ny(p) = solve(eqn,ny);
ny(p) = simplify(ny)

p = 1.75
q = ny(p)
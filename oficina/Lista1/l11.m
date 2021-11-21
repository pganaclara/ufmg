syms a b c d x y;

M = [a*x b*x*x; c*x*x*x d*y]

d = diff(M)
pretty(d)
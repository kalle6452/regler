syms R k  i(t) v(t) omega(t) j(t) b
ode1 = diff(i) == R*i + k*omega;
ode2 = diff(j) == k*i - b*omega;
odes = [ode1; ode2]
S = dsolve(odes)
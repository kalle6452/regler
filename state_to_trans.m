% https://youtu.be/CwB8FzXWvgY
% https://dsp.stackexchange.com/questions/24154/why-eigen-values-and-poles-of-a-system-are-equivalent
syms s
A = [0,1,0,0;0,-703,-5.2,14.8;0,0,0,1;0,3135,58.4,-65.8];
B = [0;33.2;0;-14.8];
C = [0,0,1,0];
D = 0;
% Trans
%{
id = eye(4);
mat = id*s-A;
invers = inv(mat);
trans = C*invers*B;
Trans = ss2tf(A,B,C,D)
%}
sys = ss(A,B,C,D);
sys_as_tf = tf(sys);
% Poles and zeros
poles = pole(sys_as_tf);
zeros = zero(sys_as_tf);
% 3 eigenvalues
eigen = eig(A);

% Finding L vector
L=place(A,B,[-0.1 -500 -5 -7.5]);

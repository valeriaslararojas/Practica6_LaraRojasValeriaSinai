%function%
function dx = Convertidor(t,x)
L = 2e-3;
R = 10;
C = 10e-6;
Uin = 32;
f = 100e3;
T = 1/f;
D = 0.4;
if mod(t,T) < D*T
    d = 1;
else
    d = 0;
end

dx = zeros(2,1);
dx(1) = -(1/L)*x(2) + (Uin/L)*d;
dx(2) = (1/C)*x(1) - (1/(R*C))*x(2);

end
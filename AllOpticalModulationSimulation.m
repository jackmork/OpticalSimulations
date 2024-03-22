[t,y]=ode45(@odefun, [0 10], [1;1]);

plot(t, abs(y(:,2)))

function dydt = odefun(t,y)
dydt = zeros(2,1);
dydt(1) = 1i*(1-y(2))-100*(y(1)-1);
dydt(2) = 1i*(100000+1i)*y(2)-1i*y(1)/100;
end
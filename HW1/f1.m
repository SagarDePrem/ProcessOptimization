%%%Author: Jacob Joshua Shila
%%% Golden Search Algorithm
clear all
clc 
format short e
syms x
%%Input
fx = 1236196.2/(-x+100).^0.272 + 816624.08/(x-89.5).^0.272 + 626395.2/(x-84.5).^0.272;
maxit = 50;
es = 10^-5;
R = (5^.5-1)/2;
%%Determine the Interval for the Initial Guess
x=[89.5:99.5];
f = subs(fx,x);
plot(x,f);
xlow = 89.5;
xhigh = 99.5;
%%Perform Golden Search
xl = xlow;
xu = xhigh;
iter = 1;
d = R*(xu-xl);
x1 = xl+d;
x2 = xu-d;
f1 = subs(fx,x1);
f2 = subs(fx,x2);
if f1>f2
    xopt = x1;
    fx = f1;
else
    xopt = x2;
    fx = f2;
end
while(1)
    d = R*d;
    if f1>f2
        xl = x2;
        x2 = x1;
        x1 = xl+d;
        f2 = f1;
        f1 = subs(fx,x1);
    else
        xu = x1;
        x1 = x2;
        x2 = xu-d;
        f1 = f2;
        f2 = subs(fx,x2);
    end
    iter = iter+1;
    if f1>f2
        xopt = x1;
        fx = f1;
    else
        xopt = x2;
        fx = f2;
    end
    if xopt~=0
        ea = (1-R)*abs((xu-xl)/xopt)*100;
    end
    if ea<=es||iter>=maxit,break
    end
end
Gold = xopt
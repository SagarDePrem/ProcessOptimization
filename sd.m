H=[40/7.5 0; 0 40/4.5];
%x=[-4.52 3.56];


p=-H*(x)';
d=(p'*H*p);
n=-(H*x')'*p;
alpha=n/d;x
%p1=p

x=x+(alpha*p)'
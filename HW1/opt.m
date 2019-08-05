%function optimum = opt(a,b, tol)

a=90;
b=99;
d=(b-a)/3;
x1=a+d;
x2=a+2*d;
tol=0.001;
p=[];
q =[];
p1=[];
p2=[];
m1=[];
m2=[];
m3=[];
m4=[];

%p1 ;
%p2 ;
%function f(H_1)
f =@(H_1) 1.2654*(300*(4.457*300*9^1.85*10^8/(-H_1+100))^0.2725 + 500*(4.457*500*10^8*3^1.85/(H_1-88.5))^0.272 +400*(4.457*10^8*400*2^1.85/(H_1-80))^0.272);

i=0;
while d>tol
    i=i+1
    if  f(x1)> f(x2)
        a=x1
        b=b ;
        d=(b-a)/3;
        x1=a+d ;
        x2=b-d;
       p(i)=a;
       q(i)=b;
       p1(i)=x1;
       p2(i)=x2;
       m1(i)=f(a);
       m2(i)=f(x1);
       m3(i)=f(x2);
       m4(i)=f(b);
    else
        a=a ;
        b=x2 ;
        d=(b-a)/3;
        x1=a+d ;
        x2=b-d ;
        p(i)=a;
        q(i)=b;
        p1(i)=x1;
        p2(i)=x2;
        m1(i)=f(a);
        m2(i)=f(x1);
        m3(i)=f(x2);
        m4(i)=f(b);
    end
    
end
   disp (f(x1))
   disp (f(x2))
   disp(x1)
   disp(x2)
   
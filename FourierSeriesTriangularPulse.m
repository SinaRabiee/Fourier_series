clear 
clc
close all
Nx=1001;
x=linspace(-pi,pi,Nx);
x=x.';
F=zeros(Nx,1);

for kk=1:Nx
    if(x(kk)<0)
        F(kk)=x(kk)+pi;
    else
        F(kk)=-x(kk)+pi;
    end
end
a_0=pi/2;
S1=a_0+(4/pi)*cos(x);
S5=a_0*ones(Nx,1);
for n=1:2:5
    an_temp=(4/(n*n*pi));
    S_temp=an_temp*cos(n*x);
     S5=S5+S_temp;
end
S7=a_0*ones(Nx,1);
for n=1:2:7
    an_temp=(4/(n*n*pi));
    S_temp=an_temp*cos(n*x);
     S7=S7+S_temp;
end

plot(x,F,'k','LineWidth',2)
hold
plot(x,S1,'c','LineWidth',2)

plot(x,S5,'r','LineWidth',2)
plot(x,S7,'b','LineWidth',2)
legend('f(x)','S_1(x)','S_5(x)','S_7(x)','Location','Best')
axis([-pi,pi,0,pi])
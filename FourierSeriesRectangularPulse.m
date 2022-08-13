clear 
clc
close all
Nx=1001;
x=linspace(-pi,pi,Nx);
x=x.';
F=ones(Nx,1);

S5=zeros(Nx,1);
S11=zeros(Nx,1);
S51=zeros(Nx,1);
for kk=1:Nx
    if(x(kk)<0)
        F(kk)=-1;
    end
end
S1=(4/pi)*sin(x);
for n=1:2:5
    bn_temp=4/(n*pi);
    S_temp=bn_temp*sin(n*x);
    S5=S5+S_temp;
end
for n=1:2:11
    bn_temp=4/(n*pi);
    S_temp=bn_temp*sin(n*x);
    S11=S11+S_temp;
end

for n=1:2:51
    bn_temp=4/(n*pi);
    S_temp=bn_temp*sin(n*x);
    S51=S51+S_temp;
end

plot(x,F,'k','LineWidth',2)
hold
plot(x,S1,'c','LineWidth',2)
plot(x,S5,'g','LineWidth',2)
plot(x,S11,'r','LineWidth',2)
plot(x,S51,'b','LineWidth',2)
legend('f(x)','S_1(x)','S_5(x)','S_{11}(x)','S_{51}(x)','Location','Best')
axis([-pi,pi,-1.5,1.5])

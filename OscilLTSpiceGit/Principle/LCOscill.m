
	
C=1e-9;
L=10e-6;

Vc0=100;
IL0=1;

wn=1/sqrt(L*C);
fo=wn/(2*pi);


timeOscil=linspace(0,5e-6,2000);

VC_oscilOut=-IL0*sqrt(L/C)*sin(wn*timeOscil)+Vc0*cos(wn*timeOscil);

IL_oscilOut=-(IL0)*(1-cos(wn*timeOscil))+(Vc0*sqrt(C/L))*(sin(wn*timeOscil))+IL0;
	
figure(1)	
lWidth=1.5;
subplot(2,1,1)
plot(timeOscil,VC_oscilOut,'r','LineWidth',lWidth)
xlabel("t(s)", "fontsize", 14)
ylabel("Vc (V)", "fontsize", 14)
set(gca, "linewidth", 2, "fontsize", 14)
grid on

subplot(2,1,2)
plot(timeOscil,IL_oscilOut,'b','LineWidth',lWidth)
xlabel("t(s)", "fontsize", 14)
ylabel("IL (A)", "fontsize", 14)
set(gca, "linewidth", 2, "fontsize", 14)
grid on
	 


	 

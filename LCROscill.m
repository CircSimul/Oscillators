
	
C=1e-9;
L=10e-6;
R=1e3;

Vc0=1e2;
IL0=1;

wn=1/sqrt(L*C);

zeta=(1/(2*R))*sqrt(L/C);


a=-IL0/C;
b=Vc0;

timeOscil=linspace(0,5e-6,2000);



for i=1:length(timeOscil)

    VCoscilOut(i)=exp(-zeta*wn*timeOscil(i))*((1/(wn*sqrt(1-zeta^2)))*(a-b*zeta*wn)*sin(wn*sqrt(1-zeta^2)*timeOscil(i))+b*cos(wn*sqrt(1-zeta^2)*timeOscil(i)));

end
	
	
	
figure(1)	
lWidth=1.5;
plot(timeOscil,VCoscilOut,'r','LineWidth',lWidth)
xlabel("t(s)", "fontsize", 14)
ylabel("Vc (V)", "fontsize", 14)
set(gca, "linewidth", 2, "fontsize", 14)
grid on
	 
	 
	 


	 


	
C=1e-9;
L=10e-6;
R=1e3;

Vc0=1e2;
IL0=1;

wn=1/sqrt(L*C);

ksi=(1/(2*R))*sqrt(L/C);


a=-IL0/C;
b=Vc0;

timeOscil=linspace(0,5e-6,2000);



for i=1:length(timeOscil)

    VCoscilOut1(i)=exp(-ksi*wn*timeOscil(i))*(1/(wn*sqrt(1-ksi^2)))*a*sin(wn*sqrt(1-ksi^2)*timeOscil(i));

    VCoscilOut2(i)=exp(-ksi*wn*timeOscil(i))*(1/(wn*sqrt(1-ksi^2)))*(-b)*ksi*wn*sin(wn*sqrt(1-ksi^2)*timeOscil(i));

    VCoscilOut3(i)=exp(-ksi*wn*timeOscil(i))*b*cos(wn*sqrt(1-ksi^2)*timeOscil(i));

    VCoscilOut(i)=VCoscilOut1(i)+VCoscilOut2(i)+VCoscilOut3(i);





    VCoscilOutNew(i)=exp(-ksi*wn*timeOscil(i))*((1/(wn*sqrt(1-ksi^2)))*(a-b*ksi*wn)*sin(wn*sqrt(1-ksi^2)*timeOscil(i))+b*cos(wn*sqrt(1-ksi^2)*timeOscil(i)));

end
	
	



	
figure(1)	
lWidth=1.5;
plot(timeOscil,VCoscilOutNew,'r','LineWidth',lWidth)
xlabel("t(s)", "fontsize", 14)
ylabel("Vc (V)", "fontsize", 14)
set(gca, "linewidth", 2, "fontsize", 14)
grid on
	 
	 
	 


	 

fs=100;
T=1/fs;
L=1000;
t=(0,L-1)*T;
Y=sin(2*pi*30*t)+sin(2*pi*60*t)+sin(2*pi*120*t);
plot(abs(fft(Y)));
d=f design lowpass(fp,fst,Ap,Ast,40,45,80,100);
hd=design(d,'buffer'match,exastly:passband');
fvtool(hd);
A=filter(hd,Y);figure
plot(abs(fft(A)));
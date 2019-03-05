function y = myFreqConv(x,h)
  zeropad1=zeros(length(x)-1,1);
  zeropad2=zeros(length(h)-1,1);
  x=[x',zeropad2'];
  x=x';
  h=[h',zeropad1'];
  h=h';
  X=fft(x);
  H=fft(h);
  Y=X.*H;
  y=ifft(Y);
end
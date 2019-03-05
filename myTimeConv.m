function y = myTimeConv(x,h)
  y=zeros(length(x)+length(h)-1,1);
  h1=flipud(h);
  zero1=zeros(length(h),1);
  x=[zero1',x',zero1'];
  x=x';
  for i=1:length(y)
    for j=1:length(h1)
        y(i)=y(i)+x(i+j)*h1(j);
    end
  end
end







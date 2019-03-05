function [m, mabs, stdev, time] = CompareConv(x, h)
  tic
  result=conv(x,h);
  t1=toc;
  tic
  y_time=myTimeConv(x,h);
  t2=toc;
  tic
  y_freq=myFreqConv(x,h);
  t3=toc;
  difference1=y_time-result;
  difference2=y_freq-result;
  m1=mean(difference1);
  m2=mean(difference2);
  m=[m1,m2];
  m3=mean(abs(difference1));
  m4=mean(abs(difference2));
  mabs=[m3,m4];
  std1=std(difference1);
  std2=std(difference2);
  stdev=[std1,std2];
  time=[t1,t2,t3];
end


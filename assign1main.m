x=ones(200,1);
h=linspace(0,1,26);
h1=linspace(1,0,26);
h1=h1(2:26);
h=[h,h1];
h=h';
y_time=myTimeConv(x,h);
y_freq=myFreqConv(x,h);
figure(1)
plot(y_time);
xlabel('time');
ylabel('magnitude');
title('plot for the time convolution');
grid
figure(2)
plot(y_freq);
xlabel('time');
ylabel('magnitude');
title('plot for the frequency convolution');
grid
piano=audioread('/Users/yuyifei/Desktop/6202/piano.wav');
impulse=audioread('/Users/yuyifei/Desktop/6202/impulse-response.wav');
[m, mabs, stdev, time] = CompareConv(piano,impulse);


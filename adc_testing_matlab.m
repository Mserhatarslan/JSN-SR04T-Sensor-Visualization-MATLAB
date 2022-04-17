clc
clear all;
delete(instrfindall);
b=serial('COM8','BaudRate',9600);
fopen(b);
i=1;

y=[];
n=0;
while(n<1000)
  y1(i)=fscanf(b, '%d');  
  y2(i)=fscanf(b,'%d');
  plot(y1,'b--','linewidth',3)
  plot(y2,'r--','linewidth',3)
drawnow;
grid on;
hold on;
title('JSN SR04t Testing');
xlabel('Time in seconds');
ylabel('Distance Value');
    n=n+1;
    i=i+1;   
    
end
fclose(b);

plot(n,y1);

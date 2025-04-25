clear, clc, clf    %删除所有内存变量，清除命令行窗口内容，清除图形窗口内容

x1=load('x.txt');  
y1=load('y.txt');  %从fortran生成的txt文件中获取x1, y1

x2=(0:0.001:0.4);
y2=2.*x2-5.*x2.^2; %无空气阻力时的抛物线方程

x3=(0:0.001:0.4);  %前文推导的空气阻力与速度成正比时的轨迹方程
y3=202.*x3+4000.*log(1-0.05.*x3);  %为使图像清晰明了，取k=0.1
%绘图
subplot(3, 1, 1)
plot(x1, y1, 'r', x2, y2, 'b')
xlim([0 0.4])
grid on
title('运动轨迹图')
xlabel('x'); ylabel('y')
legend('k \propto v^{2}', '无空气阻力')

subplot(3, 1, 2)
plot(x1, y1, 'r', x3, y3, 'g')
xlim([0 0.4])
grid on
xlabel('x'); ylabel('y')
legend('k \propto v^{2}', 'k \propto v')

subplot(3, 1, 3)
plot(x1, y1, 'r', x2, y2, 'b', x3, y3, 'g')
xlim([0 0.4])
grid on
xlabel('x'); ylabel('y')
legend('k \propto v^{2}', '无空气阻力', 'k \propto v')
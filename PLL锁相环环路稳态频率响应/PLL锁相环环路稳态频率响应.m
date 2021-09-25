%% 李东泽 2021-09-22
%% PLL锁相环环路稳态频率响应
close all
clear
clc
%% 理想二阶环的闭环频率响应
figure(1);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % 阻尼系数
    xi = XI(i);
    x = 0:0.01:100; % 引入的参量x
    H = (1+1i.*2.*xi.*x)./(1-x.^2+1i.*2.*xi.*x); % 频率响应函数

    MagH = abs(H); % 频响的模
    subplot(1,2,1);
    plot(x,10*log(MagH)); % 以dB为单位绘图
	set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-15 4]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
    
    ArgH = angle(H); % 频响的辐角    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % 以角度为单位绘图
    set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-110 10]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % 图例
set(figure(1),'Position',get(0,'ScreenSize')); % 最大化窗口便于观察
%% 理想二阶环的误差频率响应
figure(2);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % 阻尼系数
    xi = XI(i);
    x = 0:0.01:100; % 引入的参量x
    H = (-x.^2)./(1-x.^2+1i.*2.*xi.*x); % 频率响应函数

    MagH = abs(H); % 频响的模
    subplot(1,2,1);
    plot(x,10*log(MagH)); % 以dB为单位绘图
	set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-15 4]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
    
    ArgH = angle(H); % 频响的辐角    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % 以角度为单位绘图
    set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([0 180]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % 图例
set(figure(2),'Position',get(0,'ScreenSize')); % 最大化窗口便于观察
%% 采用RC积分滤波器的二阶环的闭环频率响应
figure(3);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % 阻尼系数
    xi = XI(i);
    x = 0:0.01:100; % 引入的参量x
    H = 1./(1-x.^2+1i.*2.*xi.*x); % 频率响应函数

    MagH = abs(H); % 频响的模
    subplot(1,2,1);
    plot(x,10*log(MagH)); % 以dB为单位绘图
	set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-15 4]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
    
    ArgH = angle(H); % 频响的辐角    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % 以角度为单位绘图
    set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-180 10]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % 图例
set(figure(3),'Position',get(0,'ScreenSize')); % 最大化窗口便于观察
%% 采用RC积分滤波器的二阶环的误差频率响应
figure(4);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % 阻尼系数
    xi = XI(i);
    x = 0:0.01:100; % 引入的参量x
    H = (-x.^2+1i.*2.*xi.*x)./(1-x.^2+1i.*2.*xi.*x); % 频率响应函数

    MagH = abs(H); % 频响的模
    subplot(1,2,1);
    plot(x,10*log(MagH)); % 以dB为单位绘图
	set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-15 4]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
    
    ArgH = angle(H); % 频响的辐角    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % 以角度为单位绘图
    set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([0 120]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % 图例
set(figure(4),'Position',get(0,'ScreenSize')); % 最大化窗口便于观察
%% 采用无源比例积分滤波器的二阶环的闭环频率响应
figure(5);
wn = 0.1; % 无阻尼振荡频率
K = 2; % 积分滤波器的增益
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % 阻尼系数
    xi = XI(i);
    x = 0:0.01:100; % 引入的参量x
    H = (1+1i.*(2.*xi-wn./K).*x)./(1-x.^2+1i.*2.*xi.*x); % 频率响应函数

    MagH = abs(H); % 频响的模
    subplot(1,2,1);
    plot(x,10*log(MagH)); % 以dB为单位绘图
	set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-15 4]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
    
    ArgH = angle(H); % 频响的辐角    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % 以角度为单位绘图
    set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-110 10]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % 图例
set(figure(5),'Position',get(0,'ScreenSize')); % 最大化窗口便于观察
%% 采用无源比例积分滤波器的二阶环的误差频率响应
figure(6);
wn = 0.1; % 无阻尼振荡频率
K = 2; % 积分滤波器的增益
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % 阻尼系数
    xi = XI(i);
    x = 0:0.01:100; % 引入的参量x
    H = (-x.^2+1i.*(wn./K).*x)./(1-x.^2+1i.*2.*xi.*x); % 频率响应函数

    MagH = abs(H); % 频响的模
    subplot(1,2,1);
    plot(x,10*log(MagH)); % 以dB为单位绘图
	set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([-15 4]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
    
    ArgH = angle(H); % 频响的辐角    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % 以角度为单位绘图
    set(gca,'xscale','log'); % 横坐标为对数坐标
    xlim([0.01 500]); % 设定x轴显示范围
    ylim([0 180]); % 设定y轴显示范围
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x坐标标签
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % 图例
set(figure(6),'Position',get(0,'ScreenSize')); % 最大化窗口便于观察
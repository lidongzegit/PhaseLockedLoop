%% 李东泽 2021-09-22
%% PLL锁相环环路暂态响应
close all
clear
clc
%% 输入相位阶跃时理想二阶锁相环路的暂态响应
figure(1);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = exp(-xi.*wnt).*(cosh(sqrt(xi.^2-1).*wnt)-xi./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = exp(-xi.*wnt).*(cos(sqrt(-xi.^2+1).*wnt)-xi./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = exp(-wnt).*(1-wnt); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([-0.5 1.1]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\frac{\theta_{e}(t)}{\Delta\theta}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入相位阶跃时采用无源比例积分滤波器的二阶锁相环路的暂态响应
figure(2);
wn = 0.1;
K = 2;
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = exp(-xi.*wnt).*(cosh(sqrt(xi.^2-1).*wnt)+((wn/K-xi)./sqrt(xi.^2-1)).*sinh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = exp(-xi.*wnt).*(cos(sqrt(-xi.^2+1).*wnt)+((wn/K-xi)./sqrt(-xi.^2+1)).*sin(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = exp(-wnt).*(1+(wn/K-1).*wnt); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([-0.5 1.1]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\frac{\theta_{e}(t)}{\Delta\theta}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入频率阶跃时理想二阶锁相环路的暂态响应
figure(3);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:20; % 引入的参量x
    if xi>1
        H = exp(-xi.*wnt).*(sinh(sqrt(xi.^2-1).*wnt)./sqrt(xi.^2-1)); % 频率响应函数
    else if xi<1
        H = exp(-xi.*wnt).*(sin(sqrt(-xi.^2+1).*wnt)./sqrt(-xi.^2+1)); % 频率响应函数
    else
        H = exp(-wnt).*wnt; % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 20]); % 设定x轴显示范围
    ylim([-0.3 0.7]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\omega_n\frac{\theta_{e}(t)}{\Delta\omega_o}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入频率阶跃时采用RC积分滤波器的二阶锁相环路的暂态响应
figure(4);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = 2*xi+exp(-xi.*wnt).*((1-2.*xi.^2)./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)-2*xi*cosh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = 2*xi+exp(-xi.*wnt).*((1-2.*xi.^2)./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)-2*xi*cos(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = 2-exp(-wnt).*(2+wnt); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([0 5]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\omega_n\frac{\theta_{e}(t)}{\Delta\omega_o}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入频率阶跃时采用无源比例积分滤波器的二阶锁相环路的暂态响应
figure(5);
wn = 0.1;
K = 2;
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = wn/K+exp(-xi.*wnt).*((1-xi.*wn./K)./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)-wn./K.*cosh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = wn/K+exp(-xi.*wnt).*((1-xi.*wn./K)./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)-wn./K.*cos(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = wn/K+exp(-wnt).*(wnt-wn./K.*wnt-wn./K); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([-0.3 0.7]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\omega_n\frac{\theta_{e}(t)}{\Delta\omega_o}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入频率斜升时理想二阶锁相环路的暂态响应
figure(6);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = 1-exp(-xi.*wnt).*(cosh(sqrt(xi.^2-1).*wnt)+xi./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = 1-exp(-xi.*wnt).*(cos(sqrt(-xi.^2+1).*wnt)+xi./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = 1-exp(-wnt).*(1+wnt); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([0 1.5]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\omega_n^2\frac{\theta_{e}(t)}{R}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入频率斜升时采用RC积分滤波器的二阶锁相环路的暂态响应
figure(7);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = 1-4.*xi.^2+2.*xi.*wnt-exp(-xi.*wnt).*((1-4.*xi.^2).*cosh(sqrt(xi.^2-1).*wnt)+xi./sqrt(xi.^2-1).*(1-2.*(2.*xi.^2-1)).*sinh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = 1-4.*xi.^2+2.*xi.*wnt-exp(-xi.*wnt).*((1-4.*xi.^2).*cos(sqrt(-xi.^2+1).*wnt)+xi./sqrt(-xi.^2+1).*(1-2.*(2.*xi.^2-1)).*sin(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = -3+2.*wnt+exp(-wnt).*(3+wnt); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([0 50]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\omega_n^2\frac{\theta_{e}(t)}{R}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
%% 输入频率斜升时采用无源比例积分滤波器的二阶锁相环路的暂态响应
figure(8);
wn = 0.1;
K = 20;
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % 阻尼系数
for	i = 1:7
    xi = XI(i); % 阻尼系数
    wnt = 0:0.01:12; % 引入的参量x
    if xi>1
        H = (1-2.*xi.*wn./K)+wn./K.*wnt-exp(-xi.*wnt).*((1-2.*xi.*wn./K).*cosh(sqrt(xi.^2-1).*wnt)+(xi-wn./K.*(2.*xi.^2-1))./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)); % 频率响应函数
    else if xi<1
        H = (1-2.*xi.*wn./K)+wn./K.*wnt-exp(-xi.*wnt).*((1-2.*xi.*wn./K).*cos(sqrt(-xi.^2+1).*wnt)+(xi-wn./K.*(2.*xi.^2-1))./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)); % 频率响应函数
    else
        H = (1-2.*wn./K)+wn./K.*wnt-exp(-wnt).*(1-2.*wn./K+wnt-wn./K.*wnt); % 频率响应函数
        end
    end

    plot(wnt,H); % 绘图
    xlim([0 12]); % 设定x轴显示范围
    ylim([0 1.5]); % 设定y轴显示范围
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x坐标标签
    ylabel('$\omega_n^2\frac{\theta_{e}(t)}{R}$','Interpreter','latex','fontsize',14); % y坐标标签
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % 图例
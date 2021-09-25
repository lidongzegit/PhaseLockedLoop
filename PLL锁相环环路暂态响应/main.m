%% ��� 2021-09-22
%% PLL���໷��·��̬��Ӧ
close all
clear
clc
%% ������λ��Ծʱ����������໷·����̬��Ӧ
figure(1);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = exp(-xi.*wnt).*(cosh(sqrt(xi.^2-1).*wnt)-xi./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = exp(-xi.*wnt).*(cos(sqrt(-xi.^2+1).*wnt)-xi./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = exp(-wnt).*(1-wnt); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([-0.5 1.1]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\frac{\theta_{e}(t)}{\Delta\theta}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ������λ��Ծʱ������Դ���������˲����Ķ������໷·����̬��Ӧ
figure(2);
wn = 0.1;
K = 2;
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = exp(-xi.*wnt).*(cosh(sqrt(xi.^2-1).*wnt)+((wn/K-xi)./sqrt(xi.^2-1)).*sinh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = exp(-xi.*wnt).*(cos(sqrt(-xi.^2+1).*wnt)+((wn/K-xi)./sqrt(-xi.^2+1)).*sin(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = exp(-wnt).*(1+(wn/K-1).*wnt); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([-0.5 1.1]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\frac{\theta_{e}(t)}{\Delta\theta}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ����Ƶ�ʽ�Ծʱ����������໷·����̬��Ӧ
figure(3);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:20; % ����Ĳ���x
    if xi>1
        H = exp(-xi.*wnt).*(sinh(sqrt(xi.^2-1).*wnt)./sqrt(xi.^2-1)); % Ƶ����Ӧ����
    else if xi<1
        H = exp(-xi.*wnt).*(sin(sqrt(-xi.^2+1).*wnt)./sqrt(-xi.^2+1)); % Ƶ����Ӧ����
    else
        H = exp(-wnt).*wnt; % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 20]); % �趨x����ʾ��Χ
    ylim([-0.3 0.7]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\omega_n\frac{\theta_{e}(t)}{\Delta\omega_o}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ����Ƶ�ʽ�Ծʱ����RC�����˲����Ķ������໷·����̬��Ӧ
figure(4);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = 2*xi+exp(-xi.*wnt).*((1-2.*xi.^2)./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)-2*xi*cosh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = 2*xi+exp(-xi.*wnt).*((1-2.*xi.^2)./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)-2*xi*cos(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = 2-exp(-wnt).*(2+wnt); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([0 5]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\omega_n\frac{\theta_{e}(t)}{\Delta\omega_o}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ����Ƶ�ʽ�Ծʱ������Դ���������˲����Ķ������໷·����̬��Ӧ
figure(5);
wn = 0.1;
K = 2;
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = wn/K+exp(-xi.*wnt).*((1-xi.*wn./K)./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)-wn./K.*cosh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = wn/K+exp(-xi.*wnt).*((1-xi.*wn./K)./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)-wn./K.*cos(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = wn/K+exp(-wnt).*(wnt-wn./K.*wnt-wn./K); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([-0.3 0.7]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\omega_n\frac{\theta_{e}(t)}{\Delta\omega_o}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ����Ƶ��б��ʱ����������໷·����̬��Ӧ
figure(6);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = 1-exp(-xi.*wnt).*(cosh(sqrt(xi.^2-1).*wnt)+xi./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = 1-exp(-xi.*wnt).*(cos(sqrt(-xi.^2+1).*wnt)+xi./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = 1-exp(-wnt).*(1+wnt); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([0 1.5]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\omega_n^2\frac{\theta_{e}(t)}{R}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ����Ƶ��б��ʱ����RC�����˲����Ķ������໷·����̬��Ӧ
figure(7);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = 1-4.*xi.^2+2.*xi.*wnt-exp(-xi.*wnt).*((1-4.*xi.^2).*cosh(sqrt(xi.^2-1).*wnt)+xi./sqrt(xi.^2-1).*(1-2.*(2.*xi.^2-1)).*sinh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = 1-4.*xi.^2+2.*xi.*wnt-exp(-xi.*wnt).*((1-4.*xi.^2).*cos(sqrt(-xi.^2+1).*wnt)+xi./sqrt(-xi.^2+1).*(1-2.*(2.*xi.^2-1)).*sin(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = -3+2.*wnt+exp(-wnt).*(3+wnt); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([0 50]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\omega_n^2\frac{\theta_{e}(t)}{R}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
%% ����Ƶ��б��ʱ������Դ���������˲����Ķ������໷·����̬��Ӧ
figure(8);
wn = 0.1;
K = 20;
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)]; % ����ϵ��
for	i = 1:7
    xi = XI(i); % ����ϵ��
    wnt = 0:0.01:12; % ����Ĳ���x
    if xi>1
        H = (1-2.*xi.*wn./K)+wn./K.*wnt-exp(-xi.*wnt).*((1-2.*xi.*wn./K).*cosh(sqrt(xi.^2-1).*wnt)+(xi-wn./K.*(2.*xi.^2-1))./sqrt(xi.^2-1).*sinh(sqrt(xi.^2-1).*wnt)); % Ƶ����Ӧ����
    else if xi<1
        H = (1-2.*xi.*wn./K)+wn./K.*wnt-exp(-xi.*wnt).*((1-2.*xi.*wn./K).*cos(sqrt(-xi.^2+1).*wnt)+(xi-wn./K.*(2.*xi.^2-1))./sqrt(-xi.^2+1).*sin(sqrt(-xi.^2+1).*wnt)); % Ƶ����Ӧ����
    else
        H = (1-2.*wn./K)+wn./K.*wnt-exp(-wnt).*(1-2.*wn./K+wnt-wn./K.*wnt); % Ƶ����Ӧ����
        end
    end

    plot(wnt,H); % ��ͼ
    xlim([0 12]); % �趨x����ʾ��Χ
    ylim([0 1.5]); % �趨y����ʾ��Χ
    axis square
    xlabel('$\omega_{n}t$','Interpreter','latex','fontsize',14); % x�����ǩ
    ylabel('$\omega_n^2\frac{\theta_{e}(t)}{R}$','Interpreter','latex','fontsize',14); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',8); % ͼ��
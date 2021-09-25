%% ��� 2021-09-22
%% PLL���໷��·��̬Ƶ����Ӧ
close all
clear
clc
%% ������׻��ıջ�Ƶ����Ӧ
figure(1);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % ����ϵ��
    xi = XI(i);
    x = 0:0.01:100; % ����Ĳ���x
    H = (1+1i.*2.*xi.*x)./(1-x.^2+1i.*2.*xi.*x); % Ƶ����Ӧ����

    MagH = abs(H); % Ƶ���ģ
    subplot(1,2,1);
    plot(x,10*log(MagH)); % ��dBΪ��λ��ͼ
	set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-15 4]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
    
    ArgH = angle(H); % Ƶ��ķ���    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % �ԽǶ�Ϊ��λ��ͼ
    set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-110 10]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % ͼ��
set(figure(1),'Position',get(0,'ScreenSize')); % ��󻯴��ڱ��ڹ۲�
%% ������׻������Ƶ����Ӧ
figure(2);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % ����ϵ��
    xi = XI(i);
    x = 0:0.01:100; % ����Ĳ���x
    H = (-x.^2)./(1-x.^2+1i.*2.*xi.*x); % Ƶ����Ӧ����

    MagH = abs(H); % Ƶ���ģ
    subplot(1,2,1);
    plot(x,10*log(MagH)); % ��dBΪ��λ��ͼ
	set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-15 4]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
    
    ArgH = angle(H); % Ƶ��ķ���    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % �ԽǶ�Ϊ��λ��ͼ
    set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([0 180]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % ͼ��
set(figure(2),'Position',get(0,'ScreenSize')); % ��󻯴��ڱ��ڹ۲�
%% ����RC�����˲����Ķ��׻��ıջ�Ƶ����Ӧ
figure(3);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % ����ϵ��
    xi = XI(i);
    x = 0:0.01:100; % ����Ĳ���x
    H = 1./(1-x.^2+1i.*2.*xi.*x); % Ƶ����Ӧ����

    MagH = abs(H); % Ƶ���ģ
    subplot(1,2,1);
    plot(x,10*log(MagH)); % ��dBΪ��λ��ͼ
	set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-15 4]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
    
    ArgH = angle(H); % Ƶ��ķ���    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % �ԽǶ�Ϊ��λ��ͼ
    set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-180 10]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % ͼ��
set(figure(3),'Position',get(0,'ScreenSize')); % ��󻯴��ڱ��ڹ۲�
%% ����RC�����˲����Ķ��׻������Ƶ����Ӧ
figure(4);
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % ����ϵ��
    xi = XI(i);
    x = 0:0.01:100; % ����Ĳ���x
    H = (-x.^2+1i.*2.*xi.*x)./(1-x.^2+1i.*2.*xi.*x); % Ƶ����Ӧ����

    MagH = abs(H); % Ƶ���ģ
    subplot(1,2,1);
    plot(x,10*log(MagH)); % ��dBΪ��λ��ͼ
	set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-15 4]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
    
    ArgH = angle(H); % Ƶ��ķ���    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % �ԽǶ�Ϊ��λ��ͼ
    set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([0 120]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % ͼ��
set(figure(4),'Position',get(0,'ScreenSize')); % ��󻯴��ڱ��ڹ۲�
%% ������Դ���������˲����Ķ��׻��ıջ�Ƶ����Ӧ
figure(5);
wn = 0.1; % ��������Ƶ��
K = 2; % �����˲���������
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % ����ϵ��
    xi = XI(i);
    x = 0:0.01:100; % ����Ĳ���x
    H = (1+1i.*(2.*xi-wn./K).*x)./(1-x.^2+1i.*2.*xi.*x); % Ƶ����Ӧ����

    MagH = abs(H); % Ƶ���ģ
    subplot(1,2,1);
    plot(x,10*log(MagH)); % ��dBΪ��λ��ͼ
	set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-15 4]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
    
    ArgH = angle(H); % Ƶ��ķ���    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % �ԽǶ�Ϊ��λ��ͼ
    set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-110 10]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % ͼ��
set(figure(5),'Position',get(0,'ScreenSize')); % ��󻯴��ڱ��ڹ۲�
%% ������Դ���������˲����Ķ��׻������Ƶ����Ӧ
figure(6);
wn = 0.1; % ��������Ƶ��
K = 2; % �����˲���������
XI = [1/2/sqrt(2),1/2,1/sqrt(2),1,sqrt(2),2,2*sqrt(2)];
for	i = 1:7 % ����ϵ��
    xi = XI(i);
    x = 0:0.01:100; % ����Ĳ���x
    H = (-x.^2+1i.*(wn./K).*x)./(1-x.^2+1i.*2.*xi.*x); % Ƶ����Ӧ����

    MagH = abs(H); % Ƶ���ģ
    subplot(1,2,1);
    plot(x,10*log(MagH)); % ��dBΪ��λ��ͼ
	set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([-15 4]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$\vert\frac{\theta_2(jx)}{\theta_1(jx)}\vert/dB$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
    
    ArgH = angle(H); % Ƶ��ķ���    
    subplot(1,2,2);
    plot(x,ArgH/pi*180); % �ԽǶ�Ϊ��λ��ͼ
    set(gca,'xscale','log'); % ������Ϊ��������
    xlim([0.01 500]); % �趨x����ʾ��Χ
    ylim([0 180]); % �趨y����ʾ��Χ
    axis square
    xlabel('$x=\frac{\Omega}{\omega_{n}}$','Interpreter','latex','fontsize',16); % x�����ǩ
    ylabel('$[Arg\frac{\theta_2(jx)}{\theta_1(jx)}](^{\circ})$','Interpreter','latex','fontsize',16); % y�����ǩ
    hold on
end
legend('$\xi =\frac{1}{2\sqrt{2}}$','$\xi =\frac{1}{2}$','$\xi =\frac{1}{\sqrt{2}}$','$\xi =1$','$\xi =\sqrt{2}$','$\xi =2$','$\xi =2\sqrt{2}$','Interpreter','latex','fontsize',12); % ͼ��
set(figure(6),'Position',get(0,'ScreenSize')); % ��󻯴��ڱ��ڹ۲�
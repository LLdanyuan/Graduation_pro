%aɨ���ݷ���  -- ��������������
%���벨���ϳ�ǰ������
clc;
clear;

%% �Աȷ��䲨��
sn=60;  %��λ��z
en=40;   %��λ��x

%������ϵ�� = 4
path4 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\pressure_field\20220114';
file4 = 'field_b4.bin';
field4 = read_field([path4  '\' file4]);
for i=1:field4.Nt
t4(i,1)=(field4.Pplane(en,sn,i));
end
figure
h4 = plot(t4);
title('��ͬ����ϵ���µķ��䲨��');

%������ϵ�� = 7
path7 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\pressure_field\20220114';
file7 = 'field_b7.bin';
field7 = read_field([path7  '\' file7]);
for i=1:field7.Nt
t7(i,1)=(field7.Pplane(en,sn,i));
end
hold on
h7 = plot(t7);
legend([h4,h7],'��=4','��=7');

% %������ϵ�� = 0
% path0 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\pressure_field\20220114';
% file0 = 'field_b0.bin';
% field0 = read_field([path0  '\' file0]);
% for i=1:field0.Nt
% t0(i,1)=(field0.Pplane(en,sn,i));
% end
% hold on
% h0 = plot(t0);
% legend([h0,h4,h7],'��=0','��=4','��=7');

%% �ԱȻز�����
element = 32;
line = 80;  %������line��RF��

%������ϵ�� = 4
path4 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\nlrf_file';
% file2 = 'image_prebeamformed';
file4 = 'image_b4.nlrf';
[h, Img4] = read_image_rf([path4  '\' file4], line);
a_scan_4 = Img4(:,element);
figure
% subplot(121);
h4 = plot(a_scan_4);
title('��ͬ����ϵ���µĻز�����');

% %������ϵ�� = 3.5
% path3p5 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\nlrf_file';
% file3p5 = 'image_b3p5.nlrf';
% [h, Img3p5] = read_image_rf([path3p5  '\' file3p5], line);
% a_scan_3p5 = Img3p5(:,element);
% hold on
% h3p5 = plot(a_scan_3p5);

% ������ϵ�� = 0
% path0 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\nlrf_file';
% file2 = 'image_prebeamformed';
% file0 = 'image_b0.nlrf';
% [h, Img0] = read_image_rf([path0  '\' file0], line);
% a_scan_0 = Img0(:,element);
% hold on
% subplot(121);
% h0 = plot(a_scan_0);

%������ϵ�� = 7
path2 = 'D:\unit\601\CREANUIS\creanuis_setup\Creanuis\nlrf_file';
% file2 = 'image_prebeamformed';
file2 = 'image_b7.nlrf';
[h, Img7] = read_image_rf([path2  '\' file2], line);
a_scan_7 = Img7(:,element);
hold on
h7 = plot(a_scan_7);
% legend([h3p5,h4,h7],'��=3.5','��=4','��=7');  %ͼ��
legend([h4,h7],'��=4','��=7');  %ͼ��
% legend([h0,h4,h7],'��=0','��=4','��=7');  %ͼ��




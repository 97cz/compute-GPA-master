function [course, credit] = get_course_credit(RAW)
% Function:
% ��ȡ���������ѧ����Ϣ������ѧ�ź�������
% Input
% RAW: �γ̳ɼ�����һ��Ϊ��ͷ��ǰ���зֱ�Ϊѧ�ź��������ɼ��ӵ����п�ʼ��
%    ѧ��|����|�γ�1/���޿�/ѧ��1|�γ�2/���޿�/ѧ��2|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% Output
% course: (1,n),cell���ͣ�������еĿγ���(n�ſγ�)
% credit: (1,n),double�������飬������пγ̶�Ӧ��ѧ��

num_course = size(RAW,2)-2; % ������ǰ���У�ѧ�š�������
course = null(num_course);
credit = null(num_course);
for i = 1:num_course
   course_name_credit = RAW{1,i+2}; %�γ�/���޿�/ѧ��
   course_credit = regexp(course_name_credit,'/','split'); %�з�
   course{i} = course_credit{1}; % �γ���
   credit(i) = str2double(course_credit(end)); % ѧ��
end



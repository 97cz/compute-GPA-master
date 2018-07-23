function [id, name] = get_id_name(RAW)
% Function:
% ��ȡ��������е�ѧ����Ϣ������ѧ�ź�������
% Input
% RAW: �γ̳ɼ�����һ��Ϊ��ͷ��ǰ���зֱ�Ϊѧ�ź��������ɼ��ӵ����п�ʼ��
%    ѧ��|����|�γ�1/���޿�/ѧ��|�γ�2/���޿�/ѧ��|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% Output
% id: (1,m),cell���ͣ�������е�ѧ��(m��ѧ��)
% name: cell���ͣ�������е�����

num_stu = size(RAW,1)-1; % ��������ͷ
id = null(num_stu);
name = null(num_stu);
for i = 1:num_stu
   id{i} = RAW{i+1,1}; % ѧ��
   name{i} = RAW{i+1,2}; % ����
end
id = id'; name = name';
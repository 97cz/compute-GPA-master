function sorted_result = save_result(RAW, GPA,write_to_xls)
% Function:
% �Լ��㰴�������򲢱���
% Input
% RAW: �γ̳ɼ�����һ��Ϊ��ͷ��ǰ���зֱ�Ϊѧ�ź��������ɼ��ӵ����п�ʼ��
%    ѧ��|����|�γ�1/���޿�/ѧ��|�γ�2/���޿�/ѧ��|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% GPA: (m,1),double���ͣ�����
% write_to_xls:0��1����ʾ�Ƿ񵼳�xls�ļ�
% Output
% sorted_result: cell���ͣ�������,[����,ѧ��,����,����]

[id, name] = get_id_name(RAW);
num_stu = length(name);
rank = 1:num_stu; rank = rank';
name_sorted = null(num_stu,1);
id_sorted = null(num_stu,1);

[GPA_sorted,Index] = sort(GPA,'descend');
for i  = 1:num_stu
    id_sorted{i,1} = id{Index(i)};
    name_sorted{i,1} = name{Index(i)};
end
title = {'����', 'ѧ��','����', '����'};
sorted_result = [title;
                 num2cell(rank),id_sorted,name_sorted,num2cell(GPA_sorted)];
% ��������������
if write_to_xls == 1
    xlswrite('sorted_GPA_result.xls',sorted_result);
end

    


    







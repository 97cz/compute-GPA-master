function [GPA,GPA_per_course] = compute_GPA(NUM,credit)
% Function:
% ��������ѧ����ƽ�����㣨��Ȩƽ����
% Input
% NUM: (m,n)��double�ͣ��������m��ѧ��������n�ſγ̳ɼ���ÿһ�ж�Ӧһ��ѧ���ĳɼ�
%     score_11 | score_12 | score13 | --- | score_1n |
%     score_21 | score_22 | score23 | --- | score_2n |
%     ******** | ******** | ******* | --- | ******** |
%     score_m1 | score_m2 | scorem3 | --- | score_mn |
% credit: (1,n)��double�ͣ�������пγ̵�ѧ��
% Output
% GPA: (m,1),double���ͣ��������ѧ����ƽ������
% GPA_per_course: (m,n),double���ͣ��������ѧ�����пγ̵ĵļ���

scores = NUM;
GPA_per_course = (scores-50)/10;
GPA_per_course(GPA_per_course<0) = 0;
GPA = GPA_per_course*credit'/sum(credit);

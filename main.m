% �������������ô���
% copyright - Meringue
% date - 2017/9/6
clc
clear all
close all
% ��ȡ�γ̳ɼ���Ϣ
[NUM,TXT,RAW] = xlsread('C:\Users\Jiahuan Zhou\Desktop\GPA_TC.xlsx');
% ��ȡ�γ����Ϳγ�ѧ��
[course, credit] = get_course_credit(RAW);
% ��ȡѧ����Ϣ
[id, name] = get_id_name(RAW);
% ���㼨��
[GPA,GPA_per_course] = compute_GPA(NUM,credit);
% �����ʾ�뱣��
result = save_result(RAW, GPA,0);
disp(result);
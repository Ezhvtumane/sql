select sname, snum, SUM(c1) as c2, SUM(c2) as c2, SUM(c3) as c3, SUM(c4) as c4, SUM(c5) as c5, SUM(c6) as c6, SUM(c7) as c7, SUM(c8) as c8, SUM(c9) as c9, SUM(c10) as c10, 
SUM(c11) as c11, SUM(c12) as c12, SUM(c13) as c13, SUM(c14) as c14, SUM(c15) as c15, SUM(c16) as c16, SUM(c17) as c17, SUM(c18) as c18, SUM(c19) as c19, SUM(c20) as c20, 
SUM(c21) as c21, SUM(c22) as c22, SUM(c23) as c23, SUM(c24) as c24, SUM(c25) as c25
from
(
select '����� ��������' as sname, '1.0' as snum union all 
select '� ��� �����: �������� �� ������� �������' as sname, '2.0' as snum union all 
select '�� ���: �� �������� �����' as sname, '2.1' as snum union all 
select '�� �������������� ������� �������' as sname, '2.2' as snum union all 
select '�������� �� ����������� �������' as sname, '3.0' as snum union all 
select '�� ��� ����������' as sname, '3.1' as snum union all 
select '�������� �� ������ ������' as sname, '4.0' as snum union all 
select '�� ����� �������� �� ������ ������ - �������� �� ������: ��������' as sname, '4.1' as snum union all 
select '����������' as sname, '4.2' as snum union all 
select '���������' as sname, '4.3' as snum union all 
select '�������� �� ������� ���, �����, ����' as sname, '5.0' as snum union all 
select '�� ���: �� ���' as sname, '5.1' as snum union all 
--�������
select '�� ���: �� ���������� � ���������' as sname, '5.2' as snum union all 
--
select '�������� �� ������� �������' as sname, '6.0' as snum union all 
--select '�� ���: �� ���������� � ���������' as sname, '6.1' as snum union all 
select '�� ���: �� ������' as sname, '6.1' as snum union all 
select '��������������' as sname, '6.2' as snum union all 
select '�������������� �����������' as sname, '6.3' as snum union all 
--select '�������� ���� �������' as sname, '6.3' as snum union all 
--select '�������� �������� �������' as sname, '6.4' as snum union all 
select '�������� �� ������' as sname, '7.0' as snum union all 
select '�� ��� �� �������� ������' as sname, '7.00' as snum union all 
select '�� ��� � ������������� ���������������' as sname, '7.01' as snum union all 
select '��������� ���������� ������� ������' as sname, '7.1' as snum union all 
select '��������� ������������� ������� ������' as sname, '7.2' as snum union all 
select '��� ��������� ����� - �����' as sname, '7.3' as snum union all 
select '�� ���: ����������� �����������������' as sname, '7.3.1' as snum union all 
select '��������� �����������' as sname, '7.3.2' as snum union all 
select '�� ������ ���' as sname, '7.4' as snum union all 
select '�� ���: ��������������� ������������' as sname, '7.4.1' as snum union all 
select '������������� ���������� �������' as sname, '7.4.2' as snum union all 
select '�� ��� �� ��������������' as sname, '7.4.2.1' as snum union all 
select '�������� �� �������' as sname, '8.0' as snum union all 
select '�� ���: �������� �� ��������' as sname, '8.1' as snum union all 
select '�� ��� �� �������� �������� ����' as sname, '8.1.1' as snum union all 
select '�� ���: ���������� ���������������' as sname, '8.1.1.1' as snum union all 
select '���������������������� ����������' as sname, '8.1.1.2' as snum union all 
select '���������������������� ���������' as sname, '8.1.1.3' as snum union all 
select '�� ��� �� ��������������' as sname, '8.1.1.3.1' as snum union all 
select '�������� ��������' as sname, '8.1.2' as snum union all 
select '�����' as sname, '8.1.3' as snum union all 
select '�������� �� �����' as sname, '8.2' as snum union all 
select '�������� �� ������� ������� �������' as sname, '9.0' as snum union all 
select '�� ���: �� ������� �� ������ �������� �������' as sname, '9.1' as snum union all 
select '������������� ��� ����������� �����������' as sname, '9.2' as snum union all 
select '�������������� ��� ������������ �����' as sname, '9.3' as snum union all 
select '��������������� ��� ����������� �����������' as sname, '9.4' as snum union all 
select '����������� ���������������' as sname, '9.5' as snum union all 
select '�� ���������' as sname, '9.6' as snum union all 
select '�� ���: �� ������ �����' as sname, '9.6.1' as snum union all 
select '�� ������ ��������' as sname, '9.7' as snum union all 
select '�������� �� ������ � ������������' as sname, '10.0' as snum union all 
select '�������� �� ������� ������� �������' as sname, '11.0' as snum union all 
select '�� ��� �������� �� �������������� ������' as sname, '11.1' as snum union all 
select '�������� �� ������ ������������ ������' as sname, '12.0' as snum union all 
select '�������� �� ������� ������� �������' as sname, '13.0' as snum union all 
select '�� ���: ����������� � �������������� ��������� �����' as sname, '13.1' as snum union all 
select '�� ��������� ����� �� ������ ���������' as sname, '13.2' as snum union all 
select '�� �������� �� ������ ���������������' as sname, '13.3' as snum union all 
select '�� ������ ������������ ������' as sname, '13.4' as snum union all 
select '������������� ����� (����� ������)' as sname, '13.5' as snum union all 
select '���������� ��������' as sname, '14.0' as snum union all 
select '�� ���: �� ������ ����������� ������������' as sname, '14.1' as snum union all 
select '��������� ������' as sname, '14.2' as snum union all 
select '������-����������' as sname, '14.3' as snum union all 
select '�������� ������� � ����� 28 ������ ������������ � �����' as sname, '14.4' as snum union all 
select '�������� ������� � ����� ����� 28 ������ ������������' as sname, '14.5' as snum union all 
select '�����' as sname, '14.6' as snum union all 
select '����������������' as sname, '14.7' as snum union all 
select '����������� � �������������� ��������� ����� � ����� 28 ������ ������������ � �����, � ����� � ����� �����' as sname, '14.8' as snum union all 
select '����������� � �������������� ��������� ����� ��� ���������� ������������ � ����� ����� 28 ������ ������������ ��� ����� ����������' as sname, '14.9' as snum union all 
select '�������� �� ������-�������� �������' as sname, '15.0' as snum union all 
select '�� ���: �� ������ � ��������' as sname, '15.1' as snum union all 
select '�� �������-������� �������' as sname, '15.2' as snum union all 
select '��� ������� ������ ����' as sname, '15.3' as snum union all
select '��� �����- � ��������������� ���������' as sname, '15.4' as snum union all
select '�� ������������' as sname, '15.5' as snum union all
select '��� ���������� ������ �����' as sname, '15.6' as snum union all
select '��������� � ��������������' as sname, '15.7' as snum union all
select '������������������ �����' as sname, '15.8' as snum union all
select '�� ����: �������������� �������' as sname, '15.8.1' as snum union all
select '�� ����: ��������� �������' as sname, '15.8.2' as snum union all
select '�� ������� ������' as sname, '15.9' as snum union all
select '�� ���: �����������������' as sname, '15.9.1' as snum union all
select '�� ���: ������������' as sname, '15.9.2' as snum union all
select '�������� �� �������� ������' as sname, '16.0' as snum union all 
select '�������� �� ���� � ��������� ���������' as sname, '17.0' as snum union all 
select '�� ���: �������� �� ��������-������� �������' as sname, '17.1' as snum union all 
select '�������� �� �����������' as sname, '18.0' as snum union all 
select '�� ���: �������� �� ���������� ������' as sname, '18.1' as snum union all 
select '�������� �� ��������' as sname, '19.0' as snum union all 
select '������ ��������' as sname, '20.0') t1 
left join 
(select '1.0' as OperKodF14, COUNT(*) as c1, 
SUM(case when epicsurg.vozrast<15 then 1 else 0 end) as c2, 
SUM(case when epicsurg.vozrast<=1 then 1 else 0 end) as c3, 
SUM(case when epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c4, 
SUM(case when epicsurg.OperVMP='1' then 1 else 0 end) as c5, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.vozrast<15 then 1 else 0 end) as c6, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.vozrast<=1 then 1 else 0 end) as c7, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c8, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' then 1 else 0 end) as c9, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<15 then 1 else 0 end) as c10, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<=1 then 1 else 0 end) as c11, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c12, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' then 1 else 0 end) as c13, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<15 then 1 else 0 end) as c14, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<=1 then 1 else 0 end) as c15, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c16, 
SUM(case when epicsurg.OperD='1' then 1 else 0 end) as c17, 
SUM(case when epicsurg.OperD='1' and epicsurg.vozrast<15 then 1 else 0 end) as c18, 
SUM(case when epicsurg.OperD='1' and epicsurg.vozrast<=1 then 1 else 0 end) as c19, 
SUM(case when epicsurg.OperD='1' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c20, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' then 1 else 0 end) as c21, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' and epicsurg.vozrast<15 then 1 else 0 end) as c22, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' and epicsurg.vozrast<=1 then 1 else 0 end) as c23, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c24 ,
SUM(case when istortable.Z_Code='C' then 1 else 0 end) as c25 
from epicsurg, istortable where epicsurg.OperKodF14<>'' and epicsurg.CSType='1' and istortable.DOCUNID=epicsurg.CRFromD and istortable.datDateVipis between '01.11.2015' and '30.11.2015' and istortable.PODPIS<>'�� �������' union all 
select 
(
case when epicsurg.OperKodF14='6.1' then '5.2'
when epicsurg.OperKodF14='6.2' then '6.2'
when epicsurg.OperKodF14='6.3' then '6.2'
when epicsurg.OperKodF14='6.4' then '6.2'
else OperKodF14 end
) as OperKodF14, 

COUNT(*) as c1, 
SUM(case when epicsurg.vozrast<15 then 1 else 0 end) as c2, 
SUM(case when epicsurg.vozrast<=1 then 1 else 0 end) as c3, 
SUM(case when epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c4, 
SUM(case when epicsurg.OperVMP='1' then 1 else 0 end) as c5, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.vozrast<15 then 1 else 0 end) as c6, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.vozrast<=1 then 1 else 0 end) as c7, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c8, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' then 1 else 0 end) as c9, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<15 then 1 else 0 end) as c10, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<=1 then 1 else 0 end) as c11, 
SUM(case when epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c12, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' then 1 else 0 end) as c13, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<15 then 1 else 0 end) as c14, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast<=1 then 1 else 0 end) as c15, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperOsl<>' ' and epicsurg.OperOsl not like '%��� ����������%' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c16, 
SUM(case when epicsurg.OperD='1' then 1 else 0 end) as c17, 
SUM(case when epicsurg.OperD='1' and epicsurg.vozrast<15 then 1 else 0 end) as c18, 
SUM(case when epicsurg.OperD='1' and epicsurg.vozrast<=1 then 1 else 0 end) as c19, 
SUM(case when epicsurg.OperD='1' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c20, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' then 1 else 0 end) as c21, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' and epicsurg.vozrast<15 then 1 else 0 end) as c22, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' and epicsurg.vozrast<=1 then 1 else 0 end) as c23, 
SUM(case when epicsurg.OperVMP='1' and epicsurg.OperD='1' and epicsurg.vozrast>=15 and epicsurg.vozrast<18 then 1 else 0 end) as c24, 
SUM(case when istortable.Z_Code='C' then 1 else 0 end) as c25 
from epicsurg, istortable where epicsurg.OperKodF14<>'' and epicsurg.CSType='1' and istortable.DOCUNID=epicsurg.CRFromD 
and istortable.datDateVipis between '01.11.2015' and '30.11.2015' and istortable.PODPIS<>'�� �������' group by OperKodF14
) t2 on 

t2.operkodf14 like (case when RIGHT(t1.snum,2)='.0' then (substring(t1.snum, 1,charindex('.', t1.snum)) + '%') else (t1.snum + '%') end)
group by sname, snum
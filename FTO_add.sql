declare @date1 datetime = '01.01.2015'
declare @date2 datetime = '30.12.2015'

--���
select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select ps.DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices ps
			where ps.datDateVizit between @date1 and @date2 and (iss like '�����%' or iss like '������%')-- and ctxtOtd='��������� ���������� ��������'
				group by ps.DTXTNameILL, CRFromFLD,ctxtOtd
	) t --����� ��� ����������� �������
	
union all

select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices
			where datDateVizit between @date1 and @date2 and (iss like '�����%' or iss like '������%')-- and ctxtOtd='��������� ���������� ��������'
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
				group by DTXTNameILL, CRFromFLD,ctxtOtd,Vozrast
	) t --������� 0-17 ������������

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
	(
	select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
			case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
		FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like '�����%' or iss like '������%')
				group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
	) t -- ����� ���������� ����� �����

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
(
select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
 FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like '�����%' or iss like '������%')
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
			group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
)			 t -- ����� ���������� ����� 0-17

--���
select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select ps.DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices ps
			where ps.datDateVizit between @date1 and @date2 and (iss like '%�����%' or iss like '%���%')-- and ctxtOtd='��������� ���������� ��������'
				group by ps.DTXTNameILL, CRFromFLD,ctxtOtd
	) t --����� ��� ����������� �������
	
union all

select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices
			where datDateVizit between @date1 and @date2 and (iss like '%�����%' or iss like '%���%')-- and ctxtOtd='��������� ���������� ��������'
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
				group by DTXTNameILL, CRFromFLD,ctxtOtd,Vozrast
	) t --������� 0-17 ������������

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
	(
	select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
			case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
		FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like '%�����%' or iss like '%���%')
				group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
	) t -- ����� ���������� ����� �����

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
(
select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
case when (ctxtOtd like '%������%' or ctxtOtd like '%�����%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%������� ��������� ��� �����������%') then 1 else 0 end ds_pac
 FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like '%�����%' or iss like '%���%')
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
			group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
)			 t -- ����� ���������� ����� 0-17


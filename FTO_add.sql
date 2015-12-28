declare @date1 datetime = '01.01.2015'
declare @date2 datetime = '30.12.2015'

--ФТО
select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select ps.DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices ps
			where ps.datDateVizit between @date1 and @date2 and (iss like 'физио%' or iss like 'массаж%')-- and ctxtOtd='Отделение сосудистой хирургии'
				group by ps.DTXTNameILL, CRFromFLD,ctxtOtd
	) t --Число лиц закончивших лечение
	
union all

select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices
			where datDateVizit between @date1 and @date2 and (iss like 'физио%' or iss like 'массаж%')-- and ctxtOtd='Отделение сосудистой хирургии'
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
				group by DTXTNameILL, CRFromFLD,ctxtOtd,Vozrast
	) t --возраст 0-17 включительно

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
	(
	select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
			case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
		FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like 'физио%' or iss like 'массаж%')
				group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
	) t -- число отпущенных услуг всего

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
(
select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
 FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like 'физио%' or iss like 'массаж%')
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
			group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
)			 t -- число отпущенных услуг 0-17

--ЛФК
select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select ps.DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices ps
			where ps.datDateVizit between @date1 and @date2 and (iss like '%физку%' or iss like '%лфк%')-- and ctxtOtd='Отделение сосудистой хирургии'
				group by ps.DTXTNameILL, CRFromFLD,ctxtOtd
	) t --Число лиц закончивших лечение
	
union all

select COUNT(*), SUM(amb_pac), sum(ds_pac) from 
	(
	select DTXTNameILL, CRFromFLD,ctxtOtd, 
			case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
		from iskstat2.dbo.PatientServices
			where datDateVizit between @date1 and @date2 and (iss like '%физку%' or iss like '%лфк%')-- and ctxtOtd='Отделение сосудистой хирургии'
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
				group by DTXTNameILL, CRFromFLD,ctxtOtd,Vozrast
	) t --возраст 0-17 включительно

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
	(
	select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
			case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
		FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like '%физку%' or iss like '%лфк%')
				group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
	) t -- число отпущенных услуг всего

union all

select COUNT(*), SUM(amb_pac), sum(ds_pac)  from
(
select DTXTNameILL, DocUNID, CRFromFLD,iss, test,IssKol , Ediniz, (IssKol*Ediniz) ed,
case when (ctxtOtd like '%поликл%' or ctxtOtd like '%детск%') then 1 else 0 end amb_pac,
			case when (ctxtOtd like '%Дневной стационар при поликлинике%') then 1 else 0 end ds_pac
 FROM [IskStat2].[dbo].[PatientServices]
			where datDateVizit between @date1 and @date2 and (iss like '%физку%' or iss like '%лфк%')
			and datediff(year,convert(date,(SUBSTRING(DTXTNameILL,CHARINDEX('(',DTXTNameILL,0)+1,10)),104),datDateVizit)<=17
			group by DTXTNameILL, DocUNID, CRFromFLD,iss,test,IssKol,Ediniz,ctxtOtd
)			 t -- число отпущенных услуг 0-17


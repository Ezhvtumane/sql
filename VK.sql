		select data, ctxtotd, kolvosl,COUNT(*) kolvovk,
				SUM(p2_1_sum), SUM(p4_1_sum), SUM(p5_1_sum), SUM(p10_1_sum), SUM(p14_1_sum), SUM(fansumm1),p16,p17
			from
				(
				select 
					':PeriodBegin '+'-'+' :PeriodEnd' data, vk.ctxtOtd, case when kolvoib IS NULL then kolvoak else kolvoib end kolvosl, 
					case p2_1 when 0.5 then 1
					when 0 then 1 
					else 0 end p2_1_sum,
					case p4_1 when 0.5 then 1
					when 0 then 1 
					else 0 end p4_1_sum,
					case p5_1 when 0.5 then 1
					when 0 then 1 
					else 0 end p5_1_sum,
					case p10_1 when 0.5 then 1
					when 0 then 1 
					else 0 end p10_1_sum,
					case p14_1 when 0.5 then 1
					when 0 then 1 
					else 0 end p14_1_sum,
					fansumm1,
					(
					SELECT STUFF(
									(SELECT ', ' + place16 
									FROM QuaSeqControl where ctxtotd=vk.ctxtOtd--(case when ib.ctxtOtd is null then ak.ctxtOtd else ib.ctxtOtd end)
									FOR XML PATH(''), TYPE).value('.', 'VARCHAR(MAX)'), 1, 2, ''
								) 
					) p16,
					(
					SELECT STUFF(
									(SELECT ', ' + place17 
									FROM QuaSeqControl where ctxtotd=vk.ctxtOtd--(case when ib.ctxtOtd is null then ak.ctxtOtd else ib.ctxtOtd end)
									FOR XML PATH(''), TYPE).value('.', 'VARCHAR(MAX)'), 1, 2, ''
								) 
					) p17
				from
						/*Информация из листов ВК*/
					(
						select datdatevizit, ctxtotd, p2_1,p4_1,p5_1,p10_1,p14_1,fansumm1,place16,place17
						from QuaSeqControl 
						where datdatevizit between ':PeriodBegin' and ':PeriodEnd'/* and (ctxtotd not like '%поликл%' and ctxtotd not like '%маркет%')*/
					) vk
						left join
						/*Истории переданные в статистику*/
					(
						select ctxtOtd,COUNT(*) kolvoib
						from IstorTable
						where PODPIS<>'Не указана' and (CSType='1' or CSType='3') and datdatevizit between ':PeriodBegin' and ':PeriodEnd'
						group by ctxtOtd
					) ib on vk.ctxtotd = ib.ctxtOtd
						left join
						/*Стат талоны*/
					(
						select ctxtOtd, COUNT(*) kolvoak from StatTal4
						where datdatevizit between ':PeriodBegin' and ':PeriodEnd'
						group by ctxtOtd
					) ak on vk.ctxtOtd=ak.ctxtOtd
				) t
						group by data, ctxtotd, kolvosl,p16,p17
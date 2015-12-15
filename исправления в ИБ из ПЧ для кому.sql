select ib.dkb_WorkEnd
,pd.dkb_WorkEnd,convert(date,pd.dkb_WorkEnd,104),
* 
--update ib set ib.dkb_Work=pd.dkb_Work,ib.dkb_WorkBook=pd.dkb_WorkBook,ib.dkb_WorkEnd=convert(date,pd.dkb_WorkEnd,104),ib.dkb_PaspDocCode=pd.PaspDocCode,ib.dkb_PaspDocN=pd.PaspDocN,ib.dkb_PaspDocS=pd.PaspDocS,ib.dkb_Prikaz=pd.dkb_Prikaz,ib.dkb_Rodst=pd.dkb_Rodst,ib.dkb_RodstS=pd.dkb_RodstS
from istortable ib
left join
pacientid pd on ib.PARUNID=pd.PARUNID
where ib.datDateVipis > = '01.11.2015'
and
CSType='1' --and pd.dkb_WorkEnd=''
			and ib.PayType='1' 
			and ((ib.statWork2='3') 
			or (ib.statWork2='4' and ib.txtVedFam='1' and 
			(ib.dkb_RodstS in ('4', '5') or 
			(ib.dkb_RodstS in ('2', '3') and (ib.StatWork='6' or ib.STATINVALID<>'')) or 
			(ib.dkb_RodstS in ('0', '1') and (ib.VOZRAST<=18 or (ib.STATWORK in ('3', '8') and ib.VOZRAST<=24))))))	
			--and ib.DTXTNAMEILL like 'ÐÅÓÒÎÂ ÀËÅÊÑÅÉ ÈÂÀÍÎÂÈ× (19.05.1936)'	
			
	

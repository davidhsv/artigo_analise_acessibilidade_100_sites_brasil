/* agrupado por site, nivel violacao, e quantidade 
 SELECT 
 	count(*), 
     v.site_url, 
     vd.nivel
 	FROM acessibilidade.violacao_diretriz vd
 	inner join violacao v 
  where 
 	v.ID = vd.id_violacao
  group by 
 	v.site_url, vd.nivel
  having nivel like 'Le%';
*/
/* media de violacoes por nivel */
/*
select avg(sub.count_), sub.nivel_ from
(SELECT 
	count(*) as count_, 
    v.site_url, 
    vd.nivel as nivel_
	FROM acessibilidade.violacao_diretriz vd
	inner join violacao v 
 where 
	v.ID = vd.id_violacao
 group by 
	v.site_url, vd.nivel
 ) sub
 
 group by sub.nivel_*/
 
 
 /* qtd sites que usam wai-aria */
 /*select usa_aria, count(*) from site
 group by usa_aria;
 */
 /* dos que usam quantos tem violacoes no aria */
 /*select count(*) from
 
 (select site_url, (
 
 select count(*) from violacao_diretriz vd
  inner join violacao v 
  on 
 	v.ID = vd.id_violacao
  where 
    vd.documento like '%ARIA%'
    and lol.site_url = v.site_url
 
 ) count from site as lol
 where usa_aria = 'true')
 subs
 where count > 0
  */
  
  /* agrupar percentagem de uso do aria por categoria */
  /*select *, (usa_aria/total ) * 100 as percentagem from 
  
  (select categoria, count(*) as total, 
  
  (select count(*) from site s2 
  where s1.categoria = s2.categoria
  and usa_aria = 'true') as usa_aria 
  
  
  from
  site s1
  group by categoria) subsz
  order by percentagem desc*/
  
  /*dos 28 criterios testados do wcag como total, qual percentagem de 
  violacao por criterio
*/
   select site_url, count(*), (100 - (count(*)/28 * 100)) as percentagem_verde 
   from (select vd.diretriz, v.site_url from violacao_diretriz vd
   inner join violacao v
   on v.ID = vd.id_violacao
   group by v.site_url, vd.diretriz) diretriz_violadas
  
  group by site_url
  order by percentagem_verde desc
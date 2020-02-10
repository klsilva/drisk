/* Este programa tem como objetivo exportar os dados por estado para o formato csv. Esses serão usados com input
no mu argus */ 

data ro ac am rr pa ap to ma pi ce rn pb pe al se ba mg es rj sp pr sc rs ms mt go df;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm situacao relacao sexo idade cor_raca dificul_ouv dificul_cam dificul_enx UF_nasc pais_nasc instrucao est_civil num_pes num_fam npes_fam rendimento peso;

	if uf = 11 then
		output ro;

	if uf = 12 then
		output ac;

	if uf = 13 then
		output am;

	if uf = 14 then
		output rr;

	if uf = 15 then
		output pa;

	if uf = 16 then
		output ap;

	if uf = 17 then
		output to;

	if uf = 21 then
		output ma;

	if uf = 22 then
		output pi;

	if uf = 23 then
		output ce;

	if uf = 24 then
		output rn;

	if uf = 25 then
		output pb;

	if uf = 26 then
		output pe;

	if uf = 27 then
		output al;

	if uf = 28 then
		output se;

	if uf = 29 then
		output ba;

	if uf = 31 then
		output mg;

	if uf = 32 then
		output es;

	if uf = 33 then
		output rj;

	if uf = 35 then
		output sp;

	if uf = 41 then
		output pr;

	if uf = 42 then
		output sc;

	if uf = 43 then
		output rs;

	if uf = 50 then
		output ms;

	if uf = 51 then
		output mt;

	if uf = 52 then
		output go;

	if uf = 53 then
		output df;
run;

PROC EXPORT data=work.ro
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ro.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.ac
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ac.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.am
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\am.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.rr
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\rr.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.pa
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\pa.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.ap
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ap.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.to
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\to.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.ma
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ma.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.pi
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\pi.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.ce
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ce.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.rn
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\rn.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.pb
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\pb.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.pe
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\pe.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.al
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\al.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.se
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\se.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.ba
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ba.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.mg
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\mg.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.es
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\es.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.rj
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\rj.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.sp
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\sp.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.pr
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\pr.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.sc
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\sc.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.rs
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\rs.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.ms
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\ms.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.mt
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\mt.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.go
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\go.csv' DBMS=CSV REPLACE;
RUN;

PROC EXPORT data=work.df
	OUTFILE='\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Outputs\df.csv' DBMS=CSV REPLACE;
RUN;
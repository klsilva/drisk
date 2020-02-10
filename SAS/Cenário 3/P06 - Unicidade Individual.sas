/* Este programa tem como objetivo contar o número de pessoas únicas de acordo com as variáveis-chave do Cenário 2 */

/*  Devido às impossibilidades computacionais, as decisões a seguir foram tomadas */
/* As unicidades aqui buscadas são no nível indíviduo */
/* Realiza-se essa busca por níveis geográficos. */
options nodate nocenter ls=132 ps = 80;
libname cenden "/*caminho para biblioteca */";
libname outCD "/*caminho para biblioteca */";

/* UF */
data work.uf_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil uf_concat cat_mun cat_meso cat_micro;
	uf_concat= catx('-',uf,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.uf_unicidade out= work.uf_unicidade_sorted;
	by uf_concat;
run;

data cenden.uf_unicidade_counting;
	set  work.uf_unicidade_sorted;
	retain count;

	if first.uf_concat then
		count = 0;
	count + 1;

	if last.uf_concat then
		output;
	by uf_concat;
run;

data cenden.uf_unicidade_unicos;
	set cenden.uf_unicidade_counting;
	where count=1;
run;

/* cod_mun */
data  work.cod_mun_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil cat_mun cat_meso cat_micro cod_mun_concat;
	cod_mun_concat = catx('-',cat_mun,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.cod_mun_unicidade out= work.cod_mun_unicidade_sorted;
	by cod_mun_concat;
run;

data cenden.cod_mun_unicidade_counting;
	set  work.cod_mun_unicidade_sorted;
	retain count;

	if first.cod_mun_concat then
		count = 0;
	count + 1;

	if last.cod_mun_concat then
		output;
	by cod_mun_concat;
run;

data cenden.cod_mun_unicidade_unicos;
	set cenden.cod_mun_unicidade_counting;
	where count=1;
run;

/* apond */
data  work.apond_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil cat_mun cat_meso cat_micro apond_concat;
	apond_concat= catx('-',apond,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.apond_unicidade out= work.apond_unicidade_sorted;
	by apond_concat;
run;

data cenden.apond_unicidade_counting;
	set work.apond_unicidade_sorted;
	retain count;

	if first.apond_concat then
		count = 0;
	count + 1;

	if last.apond_concat then
		output;
	by apond_concat;
run;

data cenden.apond_unicidade_unicos;
	set cenden.apond_unicidade_counting;
	where count=1;
run;

/* macro */
data  work.macro_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil cat_mun cat_meso cat_micro macro_concat;
	macro_concat= catx('-',macro,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.macro_unicidade out= work.macro_unicidade_sorted;
	by macro_concat;
run;

data cenden.macro_unicidade_counting;
	set  work.macro_unicidade_sorted;
	retain count;

	if first.macro_concat then
		count = 0;
	count + 1;

	if last.macro_concat then
		output;
	by macro_concat;
run;

data cenden.macro_unicidade_unicos;
	set cenden.macro_unicidade_counting;
	where count=1;
run;

/* meso */
data  work.meso_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil cat_mun cat_meso cat_micro meso_concat;
	meso_concat= catx('-',cat_meso,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.meso_unicidade out= work.meso_unicidade_sorted;
	by meso_concat;
run;

data cenden.meso_unicidade_counting;
	set  work.meso_unicidade_sorted;
	retain count;

	if first.meso_concat then
		count = 0;
	count + 1;

	if last.meso_concat then
		output;
	by meso_concat;
run;

data cenden.meso_unicidade_unicos;
	set cenden.meso_unicidade_counting;
	where count=1;
run;

/* micro */
data  work.micro_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil cat_mun cat_meso cat_micro micro_concat;
	micro_concat= catx('-',cat_micro,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.micro_unicidade out= work.micro_unicidade_sorted;
	by micro_concat;
run;

data cenden.micro_unicidade_counting;
	set  work.micro_unicidade_sorted;
	retain count;

	if first.micro_concat then
		count = 0;
	count + 1;

	if last.micro_concat then
		output;
	by micro_concat;
run;

data cenden.micro_unicidade_unicos;
	set cenden.micro_unicidade_counting;
	where count=1;
run;

/* rm */
data work.rm_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm sexo idade cor_raca n_pess instrucao est_civil cat_mun cat_meso cat_micro rm_concat;
	rm_concat= catx('-',rm,sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data= work.rm_unicidade out= work.rm_unicidade_sorted;
	by rm_concat;
run;

data cenden.rm_unicidade_counting;
	set  work.rm_unicidade_sorted;
	retain count;

	if first.rm_concat then
		count = 0;
	count + 1;

	if last.rm_concat then
		output;
	by rm_concat;
run;

data cenden.rm_unicidade_unicos;
	set cenden.rm_unicidade_counting;
	where count=1;
run;

/* Brasil */
data work.bra_unicidade;
	set cenden.pess_cen_den;
	keep uf cod_mun apond controle macro meso micro rm bra_concat cat_mun cat_meso cat_micro;
	bra_concat= catx('-',sexo,idade,cor_raca,n_pess,instrucao,est_civil); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.bra_unicidade out=work.bra_unicidade_sorted;
	by bra_concat;
run;

data cenden.bra_unicidade_counting;
	set work.bra_unicidade_sorted;
	retain count;

	if first.bra_concat then
		count = 0;
	count + 1;

	if last.bra_concat then
		output;
	by bra_concat;
run;

data cenden.bra_unicidade_unicos;
	set cenden.bra_unicidade_counting;
	where count=1;
run;

/* Este programa tem como objetivo contar o número de pessoas únicas de acordo com as variáveis-chave: sexo,idade,cor_raca,dificul_ouv,
dificul_cam,dificul_enx,pais_nasc,instrucao.
Estas variáveis-chaves foram selecionadas a partir de um mapeamento das variáveis-chaves em alguns dos microdados disponibilizados no Brasil. 
Selecinou-se apenas com frequência maior ou igual a quatro (máximo possível igual 7). */

/*  Devido às impossibilidades computacionais, as decisões a seguir foram tomadas */
/* As unicidades aqui buscadas são no nível indíviduo */
/* Realiza-se essa busca por níveis geográficos. */
options nodate nocenter ls=132 ps = 80;
libname outCD "/*caminho para biblioteca */";

/* UF */
data uf_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao uf_concat cat_mun cat_meso cat_micro;
	uf_concat= catx('-',uf,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=uf_unicidade out= uf_unicidade_sorted;
	by uf_concat;
run;

data outcd.uf_unicidade_counting;
	set uf_unicidade_sorted;
	retain count;

	if first.uf_concat then
		count = 0;
	count + 1;

	if last.uf_concat then
		output;
	by uf_concat;
run;

data outcd.uf_unicidade_unicos;
	set outcd.uf_unicidade_counting;
	where count=1;
run;

/* cod_mun */
data cod_mun_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao cat_mun cat_meso cat_micro cod_mun_concat;
	cod_mun_concat = catx('-',cat_mun,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=cod_mun_unicidade out=cod_mun_unicidade_sorted;
	by cod_mun_concat;
run;

data outcd.cod_mun_unicidade_counting;
	set cod_mun_unicidade_sorted;
	retain count;

	if first.cod_mun_concat then
		count = 0;
	count + 1;

	if last.cod_mun_concat then
		output;
	by cod_mun_concat;
run;

data outcd.cod_mun_unicidade_unicos;
	set outcd.cod_mun_unicidade_counting;
	where count=1;
run;

/* apond */
data apond_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao cat_mun cat_meso cat_micro apond_concat;
	apond_concat= catx('-',apond,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=outcd.apond_unicidade out=outcd.apond_unicidade_sorted;
	by apond_concat;
run;

data outcd.apond_unicidade_counting;
	set apond_unicidade_sorted;
	retain count;

	if first.apond_concat then
		count = 0;
	count + 1;

	if last.apond_concat then
		output;
	by apond_concat;
run;

data outcd.apond_unicidade_unicos;
	set outcd.apond_unicidade_counting;
	where count=1;
run;

/* macro */
data macro_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao cat_mun cat_meso cat_micro macro_concat;
	macro_concat= catx('-',macro,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=macro_unicidade out=macro_unicidade_sorted;
	by macro_concat;
run;

data outcd.macro_unicidade_counting;
	set macro_unicidade_sorted;
	retain count;

	if first.macro_concat then
		count = 0;
	count + 1;

	if last.macro_concat then
		output;
	by macro_concat;
run;

data outcd.macro_unicidade_unicos;
	set outcd.macro_unicidade_counting;
	where count=1;
run;

/* meso */
data meso_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao cat_mun cat_meso cat_micro meso_concat;
	meso_concat= catx('-',cat_meso,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=meso_unicidade out=meso_unicidade_sorted;
	by meso_concat;
run;

data outcd.meso_unicidade_counting;
	set meso_unicidade_sorted;
	retain count;

	if first.meso_concat then
		count = 0;
	count + 1;

	if last.meso_concat then
		output;
	by meso_concat;
run;

data outcd.meso_unicidade_unicos;
	set outcd.meso_unicidade_counting;
	where count=1;
run;

/* micro */
data micro_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao cat_mun cat_meso cat_micro micro_concat;
	micro_concat= catx('-',cat_micro,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=micro_unicidade out=micro_unicidade_sorted;
	by micro_concat;
run;

data outcd.micro_unicidade_counting;
	set micro_unicidade_sorted;
	retain count;

	if first.micro_concat then
		count = 0;
	count + 1;

	if last.micro_concat then
		output;
	by micro_concat;
run;

data outcd.micro_unicidade_unicos;
	set outcd.micro_unicidade_counting;
	where count=1;
run;

/* rm */
data rm_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao cat_mun cat_meso cat_micro rm_concat;
	rm_concat= catx('-',rm,sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=rm_unicidade out=rm_unicidade_sorted;
	by rm_concat;
run;

data outcd.rm_unicidade_counting;
	set outcd.rm_unicidade_sorted;
	retain count;

	if first.rm_concat then
		count = 0;
	count + 1;

	if last.rm_concat then
		output;
	by rm_concat;
run;

data outcd.rm_unicidade_unicos;
	set outcd.rm_unicidade_counting;
	where count=1;
run;

/* Brasil */
data work.bra_unicidade;
	set outcd.amostra_pess;
	keep uf cod_mun apond controle macro meso micro rm  sexo idade cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao bra_concat cat_mun cat_meso cat_micro;
	bra_concat= catx('-',sexo,idade,cor_raca,dificul_ouv,dificul_cam,dificul_enx,pais_nasc,instrucao); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.bra_unicidade out=work.bra_unicidade_sorted;
	by bra_concat;
run;

data outcd.bra_unicidade_counting;
	set work.bra_unicidade_sorted;
	retain count;

	if first.bra_concat then
		count = 0;
	count + 1;

	if last.bra_concat then
		output;
	by bra_concat;
run;

data outcd.bra_unicidade_unicos;
	set outcd.bra_unicidade_counting;
	where count=1;
run;

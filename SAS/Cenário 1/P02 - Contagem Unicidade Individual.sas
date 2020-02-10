/* Contagem de unicidade */
options nodate nocenter ls=132 ps = 80; 
libname outCD "/*caminho para biblioteca */";
data contagem_uf;
	set outcd.uf_unicidade_unicos;
	keep UF count;
run;

proc sort data=contagem_uf;
by uf;
run;

data contagem_apond;
	set outcd.apond_unicidade_unicos;
	keep apond count;
run;

proc sort data=contagem_apond;
by apond;
run;

data contagem_cod_mun;
	set outcd.cod_mun_unicidade_unicos;
	keep cat_mun count;
run;

proc sort data=contagem_cod_mun;
by cat_mun;
run;

data contagem_macro;
	set outcd.macro_unicidade_unicos;
	keep macro count;
run;

proc sort data= contagem_macro;
by macro;
run;

data contagem_meso;
	set outcd.meso_unicidade_unicos;
	keep cat_meso count;
run;

proc sort data=contagem_meso;
by cat_meso;
run;
data contagem_micro;
	set outcd.micro_unicidade_unicos;
	keep cat_micro count;
run;
proc sort data=contagem_micro;
by cat_micro;
run;
data contagem_rm;
	set outcd.rm_unicidade_unicos;
	keep rm count;
run;

proc sort data=contagem_rm;
by rm;
run;

proc means data=contagem_uf n noprint;
var count;
by uf;
output out=outcd.contagem_uf n=numero;
run;

proc means data=contagem_cod_mun n;
var count;
by cat_mun;
output out=outcd.contagem_cod_mun n=numero;
run;

proc means data=contagem_apond n;
var count;
by apond;
output out=outcd.contagem_apond n=numero;
run;
proc means data=contagem_meso n;
var count;
by cat_meso;
output out=outcd.contagem_meso n=numero;
run;

proc means data=contagem_micro n;
var count;
by cat_micro;
output out=outcd.contagem_micro n=numero;
run;

proc means data=contagem_rm n;
var count;
by rm;
output out=outcd.contagem_rm n=numero;
run;
proc means data=contagem_macro n;
var count;
by macro;
output out=outcd.contagem_macro n=numero;
run;

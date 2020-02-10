/* Este programa tem como objetivo contar o número de pessoas únicas de acordo com as variáveis-chave do Cenário 2. */

/*  Devido às impossibilidades computacionais, as decisões a seguir foram tomadas */
/* As unicidades aqui buscadas são no nível domicílio */
/* Realiza-se essa busca por níveis geográficos. */

options nodate nocenter ls=132 ps = 80;
libname cenden "/*caminho para biblioteca */";

/* UF */
data uf_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm uf_concat cat_mun cat_meso cat_micro n_pess;
	length uf_concat $341;
	uf_concat= catx('-',uf,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.uf_unicidade_dom out=work.uf_unicidade_sorted_dom;
	by uf_concat;
run;

data cenden.uf_unicidade_counting_dom;
	set work.uf_unicidade_sorted_dom;
	retain count;

	if first.uf_concat then
		count = 0;
	count + 1;

	if last.uf_concat then
		output;
	by uf_concat;
run;

data cenden.uf_unicidade_unicos_dom;
	set cenden.uf_unicidade_counting_dom;
	where count=1;
run;

/* cod_mun */
data cod_mun_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro cod_mun_concat n_pess;
	length cod_mun_concat $341;
	cod_mun_concat = catx('-',cat_mun,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.cod_mun_unicidade_dom out=cod_mun_unicidade_sorted_dom;
	by cod_mun_concat;
run;

data cenden.cod_mun_unicidade_counting_dom;
	set work.cod_mun_unicidade_sorted_dom;
	retain count;

	if first.cod_mun_concat then
		count = 0;
	count + 1;

	if last.cod_mun_concat then
		output;
	by cod_mun_concat;
run;

data cenden.cod_mun_unicidade_unicos_dom;
	set cenden.cod_mun_unicidade_counting_dom;
	where count=1;
run;

/* apond */
data apond_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro apond_concat n_pess;
	length apond_concat $341; 
	apond_concat= catx('-',apond,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.apond_unicidade_dom out=apond_unicidade_sorted_dom;
	by apond_concat;
run;

data cenden.apond_unicidade_counting_dom;
	set work.apond_unicidade_sorted_dom;
	retain count;

	if first.apond_concat then
		count = 0;
	count + 1;

	if last.apond_concat then
		output;
	by apond_concat;
run;

data cenden.apond_unicidade_unicos_dom;
	set cenden.apond_unicidade_counting_dom;
	where count=1;
run;

/* macro */
data macro_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro macro_concat n_pess;
	length macro_concat $341;
	macro_concat= catx('-',macro,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.macro_unicidade_dom out=macro_unicidade_sorted_dom;
	by macro_concat;
run;

data cenden.macro_unicidade_counting_dom;
	set work.macro_unicidade_sorted_dom;
	retain count;

	if first.macro_concat then
		count = 0;
	count + 1;

	if last.macro_concat then
		output;
	by macro_concat;
run;

data cenden.macro_unicidade_unicos_dom;
	set cenden.macro_unicidade_counting_dom;
	where count=1;
run;

/* meso */
data meso_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro meso_concat n_pess;
	length meso_concat $341;
	meso_concat= catx('-',cat_meso,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.meso_unicidade_dom out=meso_unicidade_sorted_dom;
	by meso_concat;
run;

data cenden.meso_unicidade_counting_dom;
	set work.meso_unicidade_sorted_dom;
	retain count;

	if first.meso_concat then
		count = 0;
	count + 1;

	if last.meso_concat then
		output;
	by meso_concat;
run;

data cenden.meso_unicidade_unicos_dom;
	set cenden.meso_unicidade_counting_dom;
	where count=1;
run;

/* micro */
data micro_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro micro_concat n_pess;
	length micro_concat $341;
	micro_concat= catx('-',cat_micro,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.micro_unicidade_dom out=micro_unicidade_sorted_dom;
	by micro_concat;
run;

data cenden.micro_unicidade_counting_dom;
	set work.micro_unicidade_sorted_dom;
	retain count;

	if first.micro_concat then
		count = 0;
	count + 1;

	if last.micro_concat then
		output;
	by micro_concat;
run;

data cenden.micro_unicidade_unicos_dom;
	set cenden.micro_unicidade_counting_dom;
	where count=1;
run;

/* rm */
data rm_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro rm_concat n_pess;
	length rm_concat $341;
	rm_concat= catx('-',rm,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.rm_unicidade_dom out=rm_unicidade_sorted_dom;
	by rm_concat;
run;

data cenden.rm_unicidade_counting_dom;
	set work.rm_unicidade_sorted_dom;
	retain count;

	if first.rm_concat then
		count = 0;
	count + 1;

	if last.rm_concat then
		output;
	by rm_concat;
run;

data cenden.rm_unicidade_unicos_dom;
	set cenden.rm_unicidade_counting_dom;
	where count=1;
run;


/* Brasil */

data bra_unicidade_dom;
	set cenden.dom_cenden_dom;
	keep uf apond controle macro rm bra_concat cat_mun cat_meso cat_micro n_pess;
	length bra_concat $341;
	bra_concat= catx('-',uf,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,instrucao1,instrucao2,instrucao3,instrucao4,instrucao5,est_civil1, est_civil2,est_civil3,est_civil4,est_civil5,est_civil6,n_pess); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.bra_unicidade_dom out=work.bra_unicidade_sorted_dom;
	by bra_concat;
run;

data cenden.bra_unicidade_counting_dom;
	set work.bra_unicidade_sorted_dom;
	retain count;

	if first.bra_concat then
		count = 0;
	count + 1;

	if last.bra_concat then
		output;
	by bra_concat;
run;

data cenden.bra_unicidade_unicos_dom;
	set cenden.bra_unicidade_counting_dom;
	where count=1;
run;




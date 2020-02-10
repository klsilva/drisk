/* Este programa tem como objetivo contar o número de pessoas únicas de acordo com as variáveis-chave: sexo,idade,cor_raca,dificul_ouv,
dificul_cam,dificul_enx,pais_nasc,instrucao.
Estas variáveis-chaves foram selecionadas a partir de um mapeamento das variáveis-chaves em alguns dos microdados disponibilizados no Brasil. 
Selecinou-se apenas com frequência maior ou igual a quatro (máximo possível igual 7). */

/*  Devido às impossibilidades computacionais, as decisões a seguir foram tomadas */
/* Realiza-se essa busca por níveis geográficos. */
options nodate nocenter ls=132 ps = 80;
libname outCD "/*caminho para biblioteca */";

/* UF */
data uf_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm uf_concat cat_mun cat_meso cat_micro n_pess;
	length uf_concat $770;
	uf_concat= catx('-',uf,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.uf_unicidade_dom out=work.uf_unicidade_sorted_dom;
	by uf_concat;
run;

data outcd.uf_unicidade_counting_dom;
	set work.uf_unicidade_sorted_dom;
	retain count;

	if first.uf_concat then
		count = 0;
	count + 1;

	if last.uf_concat then
		output;
	by uf_concat;
run;

data outcd.uf_unicidade_unicos_dom;
	set outcd.uf_unicidade_counting_dom;
	where count=1;
run;

/* cod_mun */
data cod_mun_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro cod_mun_concat n_pess;
	length cod_mun_concat $770;
	cod_mun_concat = catx('-',cat_mun,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.cod_mun_unicidade_dom out=work.cod_mun_unicidade_sorted_dom;
	by cod_mun_concat;
run;

data outcd.cod_mun_unicidade_counting_dom;
	set work.cod_mun_unicidade_sorted_dom;
	retain count;

	if first.cod_mun_concat then
		count = 0;
	count + 1;

	if last.cod_mun_concat then
		output;
	by cod_mun_concat;
run;

/* Brasil */

data bra_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm bra_concat cat_mun cat_meso cat_micro n_pess;
	length bra_concat $770;
	bra_concat= catx('-',sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.bra_unicidade_dom out=work.bra_unicidade_sorted_dom;
	by bra_concat;
run;

data outcd.bra_unicidade_counting_dom;
	set work.bra_unicidade_sorted_dom;
	retain count;

	if first.bra_concat then
		count = 0;
	count + 1;

	if last.bra_concat then
		output;
	by bra_concat;
run;

data outcd.bra_unicidade_unicos_dom;
	set outcd.bra_unicidade_counting_dom;
	where count=1;
run;

data outcd.cod_mun_unicidade_unicos_dom;
	set outcd.cod_mun_unicidade_counting_dom;
	where count=1;
run;

/* apond */
data apond_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro apond_concat n_pess;
	length apond_concat $770;
	apond_concat= catx('-',apond,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.apond_unicidade_dom out=work.apond_unicidade_sorted_dom;
	by apond_concat;
run;

data outcd.apond_unicidade_counting_dom;
	set work.apond_unicidade_sorted_dom;
	retain count;

	if first.apond_concat then
		count = 0;
	count + 1;

	if last.apond_concat then
		output;
	by apond_concat;
run;

data outcd.apond_unicidade_unicos_dom;
	set outcd.apond_unicidade_counting_dom;
	where count=1;
run;

/* macro */
data macro_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro macro_concat n_pess;
	length macro_concat $770;
	macro_concat= catx('-',macro,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.macro_unicidade_dom out=work.macro_unicidade_sorted_dom;
	by macro_concat;
run;

data outcd.macro_unicidade_counting_dom;
	set work.macro_unicidade_sorted_dom;
	retain count;

	if first.macro_concat then
		count = 0;
	count + 1;

	if last.macro_concat then
		output;
	by macro_concat;
run;

data outcd.macro_unicidade_unicos_dom;
	set outcd.macro_unicidade_counting_dom;
	where count=1;
run;

/* meso */
data meso_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro meso_concat n_pess;
	length meso_concat $770;
	meso_concat= catx('-',cat_meso,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.meso_unicidade_dom out=work.meso_unicidade_sorted_dom;
	by meso_concat;
run;

data outcd.meso_unicidade_counting_dom;
	set work.meso_unicidade_sorted_dom;
	retain count;

	if first.meso_concat then
		count = 0;
	count + 1;

	if last.meso_concat then
		output;
	by meso_concat;
run;

data outcd.meso_unicidade_unicos_dom;
	set outcd.meso_unicidade_counting_dom;
	where count=1;
run;

/* micro */
data micro_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro micro_concat n_pess;
	length micro_concat $770;
	micro_concat= catx('-',cat_micro,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.micro_unicidade_dom out=work.micro_unicidade_sorted_dom;
	by micro_concat;
run;

data outcd.micro_unicidade_counting_dom;
	set work.micro_unicidade_sorted_dom;
	retain count;

	if first.micro_concat then
		count = 0;
	count + 1;

	if last.micro_concat then
		output;
	by micro_concat;
run;

data outcd.micro_unicidade_unicos_dom;
	set outcd.micro_unicidade_counting_dom;
	where count=1;
run;

/* rm */
data rm_unicidade_dom;
	set outcd.dom_cen_f4;
	keep uf apond controle macro rm cat_mun cat_meso cat_micro rm_concat n_pess;
	length rm_concat $770;
	rm_concat= catx('-',rm,sexo1,sexo2,idade0,idade1,idade2,idade3,idade4,idade5,idade6,idade7,idade8,idade9,idade10,idade11,idade12,idade13, 
idade14,idade15,idade16,idade17,idade18,idade19,idade20,idade21,idade22,idade23,idade24,idade25,idade26,idade27, idade28,idade29,idade30,idade31,idade32,idade33,idade34,idade35,idade36,idade37,idade38,idade39,idade40,idade41, idade42,idade43,idade44,idade45,idade46,idade47,idade48,idade49,idade50,idade51,idade52,idade53,idade54,idade55,idade56,idade57,idade58,idade59,idade60,idade61,idade62,idade63,idade64,idade65,idade66,idade67,idade68,idade69,idade70,idade71,idade72,idade73,idade74,idade75,idade76,idade77,idade78,idade79,idade80,idade81,idade82,idade83,idade84,idade85,idade86,idade87,idade88,idade89,idade90,idade91,idade92,idade93,idade94,idade95,idade96,idade97,
idade98,idade99,idade100,idade101,idade102,idade103,idade104,idade105,idade106,idade107,idade108,idade109,
idade110,idade111,idade112,idade113,idade114,idade115,idade116,idade117,idade118,idade119,idade120,
idade121,idade122,idade123,idade124,idade125,idade126,idade127,idade128,idade129,idade130,idade131,
idade132,idade133,idade134,idade135,idade136,idade137,idade138,idade139,cor_raca1,cor_raca2,cor_raca3,
cor_raca4,cor_raca5,cor_raca6,dificul_cam1,dificul_cam2,dificul_cam3,dificul_cam4,dificul_cam5,
dificul_ouv1,dificul_ouv2,dificul_ouv3,dificul_ouv4,dificul_ouv5,
dificul_enx1,dificul_enx2,dificul_enx3,dificul_enx4,dificul_enx5,
pais_nasc1,pais_nasc2,pais_nasc3,pais_nasc4,pais_nasc5,pais_nasc6,pais_nasc7,pais_nasc8,pais_nasc9,
pais_nasc10,pais_nasc11,pais_nasc12,pais_nasc13,pais_nasc14,pais_nasc15,pais_nasc16,pais_nasc17,pais_nasc18,
pais_nasc19,pais_nasc20,pais_nasc21,pais_nasc22,pais_nasc23,pais_nasc24,pais_nasc25,pais_nasc26,pais_nasc27,
pais_nasc28,pais_nasc29,pais_nasc30,pais_nasc31,pais_nasc32,pais_nasc33,pais_nasc34,pais_nasc35,pais_nasc36,
pais_nasc37,pais_nasc38,pais_nasc39,pais_nasc40,pais_nasc41,pais_nasc42,pais_nasc43,pais_nasc44,pais_nasc45,
pais_nasc46,pais_nasc47,pais_nasc48,pais_nasc49,pais_nasc50,pais_nasc51,pais_nasc52,pais_nasc53,pais_nasc54,
pais_nasc55,pais_nasc56,pais_nasc57,pais_nasc58,pais_nasc59,pais_nasc60,pais_nasc61,pais_nasc62,pais_nasc63,
pais_nasc64,pais_nasc65,pais_nasc66,pais_nasc67,pais_nasc68,pais_nasc69,pais_nasc70,pais_nasc71,pais_nasc72,
pais_nasc73,pais_nasc74,pais_nasc75,pais_nasc76,pais_nasc77,pais_nasc78,pais_nasc79,pais_nasc80,pais_nasc81,
pais_nasc82,pais_nasc83,pais_nasc84,pais_nasc85,pais_nasc86,pais_nasc87,pais_nasc88,pais_nasc89,pais_nasc90,
pais_nasc91,pais_nasc92,pais_nasc93,pais_nasc94,pais_nasc95,pais_nasc96,pais_nasc97,pais_nasc98,pais_nasc99,
pais_nasc100,pais_nasc101,pais_nasc102,pais_nasc103,pais_nasc104,pais_nasc105,pais_nasc106,pais_nasc107,
pais_nasc108,pais_nasc109,pais_nasc110,pais_nasc111,pais_nasc112,pais_nasc113,pais_nasc114,pais_nasc115,
pais_nasc116,pais_nasc117,pais_nasc118,pais_nasc119,pais_nasc120,pais_nasc121,pais_nasc122,pais_nasc123,
pais_nasc124,pais_nasc125,pais_nasc126,pais_nasc127,pais_nasc128,pais_nasc129,pais_nasc130,pais_nasc131,
pais_nasc132,pais_nasc133,pais_nasc134,pais_nasc135,pais_nasc136,pais_nasc137,pais_nasc138,pais_nasc139,
pais_nasc140,pais_nasc141,pais_nasc142,pais_nasc143,pais_nasc144,pais_nasc145,pais_nasc146,pais_nasc147,
pais_nasc148,pais_nasc149,pais_nasc150,pais_nasc151,pais_nasc152,pais_nasc153,pais_nasc154,pais_nasc155,
pais_nasc156,pais_nasc157,pais_nasc158,pais_nasc159,pais_nasc160,pais_nasc161,pais_nasc162,pais_nasc163,
pais_nasc164,pais_nasc165,pais_nasc166,pais_nasc167,pais_nasc168,pais_nasc169,pais_nasc170,pais_nasc171,
pais_nasc172,pais_nasc173,pais_nasc174,pais_nasc175,pais_nasc176,pais_nasc177,pais_nasc178,pais_nasc179,
pais_nasc180,pais_nasc181,pais_nasc182,pais_nasc183,pais_nasc184,pais_nasc185,pais_nasc186,pais_nasc187,
pais_nasc188,pais_nasc189,pais_nasc190,pais_nasc191,pais_nasc192,pais_nasc193,pais_nasc194,pais_nasc195,
pais_nasc196,pais_nasc197,pais_nasc198,pais_nasc199, instrucao1,instrucao2,instrucao3,instrucao4,instrucao5); /*concatena os valores das variáveis-chaves com o separador '-' */
run;

proc sort data=work.rm_unicidade_dom out=work.rm_unicidade_sorted_dom;
	by rm_concat;
run;

data outcd.rm_unicidade_counting_dom;
	set work.rm_unicidade_sorted_dom;
	retain count;

	if first.rm_concat then
		count = 0;
	count + 1;

	if last.rm_concat then
		output;
	by rm_concat;
run;

data outcd.rm_unicidade_unicos_dom;
	set outcd.rm_unicidade_counting_dom;
	where count=1;
run;







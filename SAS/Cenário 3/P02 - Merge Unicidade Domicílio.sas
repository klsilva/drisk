/* Faz junção dos datasets gerados pelo P01 */ 
options nodate nocenter ls=132 ps = 80;

libname cenden "/*caminho para biblioteca */";

data outcd.dom_cen_f4;
	merge outcd.dom_sexo outcd.dom_idade outcd.dom_cor_raca outcd.dom_dificul_cam outcd.dom_dificul_ouv outcd.dom_dificul_enx outcd.dom_pais_nasc outcd.dom_instrucao;
by UF cat_mun apond controle;
run;
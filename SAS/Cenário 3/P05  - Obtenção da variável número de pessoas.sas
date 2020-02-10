options nodate nocenter ls=132 ps = 80;
libname outCD "/*caminho para biblioteca */";
libname cenden "/*caminho para biblioteca */";

data cenden.pess_cen_den;
	merge outcd.amostra_pess cenden.dom_cenden_dom;
by UF cat_mun apond controle;
keep apond cat_macro cat_meso cat_micro cat_mun cod_mun controle cor_raca est_civil idade macro instrucao meso micro rm sexo uf n_pess;
run;


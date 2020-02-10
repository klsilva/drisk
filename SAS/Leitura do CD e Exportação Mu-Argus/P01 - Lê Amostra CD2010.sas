/* Lê os microdados da amostra do CD 2010 */

options nodate nocenter ls=132 ps = 80; 
libname outCD "/*caminho para biblioteca */";

filename in ("\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_11.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_12.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_13.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_14.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_15.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_16.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_17.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_21.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_22.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_23.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_24.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_25.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_26.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_27.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_28.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_29.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_31.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_32.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_33.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_35_outras.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_35_RMSP.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_41.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_42.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_43.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_50.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_51.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_52.txt",
            "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\Pessoas\Amostra_Pessoas_53.txt")  LRECL = 540;


data amostra;
     infile in;;
     input @001 UF            $2.
           @003 cod_mun       $5.
           @008 apond        $13. 
           @021 controle      $8.
           @045 macro         $1.
           @046 meso          $2.
           @048 micro         $3.
           @051 rm            $2.
           @053 situacao      1.
           @054 relacao       2.
           @056 num_pes       2.
           @058 sexo          1.
           @062 idade         3.
           @402 num_fam       2.
           @404 npes_fam      2.
           @68 cor_raca       1.
		   @71 dificul_ouv    1.
		   @72 dificul_cam    1.
		   @70 dificul_enx    1.
		   @89 pais_nasc      7.
		   @158 instrucao     1.
		   @194 est_civil     1.
		   @213 rendimento    6.
		   @29  peso          16.13;


Proc sort data = amostra;
     by UF cod_mun;

Data cor_apond;
     infile "\\srjn4\projetos\Projeto_IPEADATA\Temporario\Karol\Microdados\microdados_ 14_municipios_com_areas_redefinidas\Dados\Amostra_Pessoas_14munic.txt" LRECL = 540;
      input @001 UF            $2.
           @003 cod_mun       $5.
           @008 apond        $13. 
           @021 controle      $8.
           @045 macro         $1.
           @046 meso          $2.
           @048 micro         $3.
           @051 rm            $2.
           @053 situacao      1.
           @054 relacao       2.
           @056 num_pes       2.
           @058 sexo          1.
           @062 idade         3.
           @402 num_fam       2.
           @404 npes_fam      2.
           @68 cor_raca       1.
		   @71 dificul_ouv    1.
		   @72 dificul_cam    1.
		   @70 dificul_enx    1.
		   @89 pais_nasc      7.
		   @158 instrucao     1.
		   @194 est_civil     1.
		   @213 rendimento    6.
		   @29  peso          16.13;

Proc sort data = cor_apond;
     by UF cod_mun;

data amo_cor;
     merge amostra (in=a) cor_apond (in=c);
     by UF cod_mun;

Proc sort data = amo_cor out = outCD.amostra_pess;
     by  UF cod_mun apond controle num_pes;

	 data outCD.amostra_pess;
	 	set outCD.amostra_pess;
		keep UF cod_mun cat_mun apond controle macro cat_macro meso cat_meso  micro cat_micro rm situacao relacao num_pes sexo idade num_fam npes_fam cor_raca dificul_ouv dificul_cam dificul_enx pais_nasc instrucao est_civil rendimento peso;
		cat_mun = cats(UF,cod_mun);
		cat_macro=cats(UF,macro);
		cat_meso=cats(UF,meso);
		cat_micro=cats(UF,micro);
	
proc contents data = outCD.amostra_pess;

run;



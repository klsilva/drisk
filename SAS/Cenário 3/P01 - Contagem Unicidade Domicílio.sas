/* Realiza contagem para cada uma das variáveis do Cenário 2 para a unidade de investigação domicílio */

options nodate nocenter ls=132 ps = 80;
libname cenden "/*caminho para biblioteca */";
libname outCD "/*caminho para biblioteca */";

/* contagem por sexo */
data cenden.dom_sexo;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom sexo1 sexo2 n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom sexo1 sexo2 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		sexo1="Masculino"
		sexo2="Feminino";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			sexo1 = 0;
			sexo2 = 0;
		end;

	n_pess + 1;

	if sexo = 1 then
		sexo1 +1;
	else if sexo = 2 then
		sexo2 +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* contagem por idades */
data cenden.dom_idade;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom idade0 idade1 idade2 idade3 idade4 idade5 idade6 idade7 idade8 idade9 idade10 idade11 idade12 idade13
		idade14 idade15 idade16 idade17 idade18 idade19 idade20 idade21 idade22 idade23 idade24 idade25 idade26 idade27
		idade28 idade29 idade30 idade31 idade32 idade33 idade34 idade35 idade36 idade37 idade38 idade39 idade40 idade41
		idade42 idade43 idade44 idade45 idade46 idade47 idade48 idade49 idade50 idade51 idade52 idade53 idade54 idade55
		idade56 idade57 idade58 idade59 idade60 idade61 idade62 idade63 idade64 idade65 idade66 idade67 idade68 idade69
		idade70 idade71 idade72 idade73 idade74 idade75 idade76 idade77 idade78 idade79 idade80 idade81 idade82 idade83
		idade84 idade85 idade86 idade87 idade88 idade89 idade90 idade91 idade92 idade93 idade94 idade95 idade96 idade97
		idade98 idade99 idade100 idade101 idade102 idade103 idade104 idade105 idade106 idade107 idade108 idade109
		idade110 idade111 idade112 idade113 idade114 idade115 idade116 idade117 idade118 idade119 idade120
		idade121 idade122 idade123 idade124 idade125 idade126 idade127 idade128 idade129 idade130 idade131
		idade132 idade133 idade134 idade135 idade136 idade137 idade138 idade139  n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom idade0 idade1 idade2 idade3 idade4 idade5 
		idade6 idade7 idade8 idade9 idade10 idade11 idade12 idade13 idade14 idade15 idade16 idade17 idade18 idade19 
		idade20 idade21 idade22 idade23 idade24 idade25 idade26 idade27 idade28 idade29 idade30 idade31 
		idade32 idade33 idade34 idade35 idade36 idade37 idade38 idade39 idade40 idade41
		idade42 idade43 idade44 idade45 idade46 idade47 idade48 idade49 idade50 idade51 idade52 idade53 idade54 idade55
		idade56 idade57 idade58 idade59 idade60 idade61 idade62 idade63 idade64 idade65 idade66 idade67 idade68 idade69
		idade70 idade71 idade72 idade73 idade74 idade75 idade76 idade77 idade78 idade79 idade80 idade81 idade82 idade83
		idade84 idade85 idade86 idade87 idade88 idade89 idade90 idade91 idade92 idade93 idade94 idade95 idade96 idade97
		idade98 idade99 idade100 idade101 idade102 idade103 idade104 idade105 idade106 idade107 idade108 idade109
		idade110 idade111 idade112 idade113 idade114 idade115 idade116 idade117 idade118 idade119 idade120
		idade121 idade122 idade123 idade124 idade125 idade126 idade127 idade128 idade129 idade130 idade131
		idade132 idade133 idade134 idade135 idade136 idade137 idade138 idade139 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		idade0="0"
		idade1="1"
		idade2="2"
		idade3="3"
		idade4="4"
		idade5="5"
		idade6="6"
		idade7="7"
		idade8="8"
		idade9="9"
		idade10="10"
		idade11="11"
		idade12="12"
		idade13="13"
		idade14="14"
		idade15="15"
		idade16="16"
		idade17="17"
		idade18="18"
		idade19="19"
		idade20="20"
		idade21="21"
		idade22="22"
		idade23="23"
		idade24="24"
		idade25="25"
		idade26="26"
		idade27="27"
		idade28="28"
		idade29="29"
		idade30="30"
		idade31="31"
		idade32="32"
		idade33="33"
		idade34="34"
		idade35="35"
		idade36="36"
		idade37="37"
		idade38="38"
		idade39="39"
		idade40="40"
		idade41="41"
		idade42="42"
		idade43="43"
		idade44="44"
		idade45="45"
		idade46="46"
		idade47="47"
		idade48="48"
		idade49="49"
		idade50="50"
		idade51="51"
		idade52="52"
		idade53="53"
		idade54="54"
		idade55="55"
		idade56="56"
		idade57="57"
		idade58="58"
		idade59="59"
		idade60="60"
		idade61="61"
		idade62="62"
		idade63="63"
		idade64="64"
		idade65="65"
		idade66="66"
		idade67="67"
		idade68="68"
		idade69="69"
		idade70="70"
		idade71="71"
		idade72="72"
		idade73="73"
		idade74="74"
		idade75="75"
		idade76="76"
		idade77="77"
		idade78="78"
		idade79="79"
		idade80="80"
		idade81="81"
		idade82="82"
		idade83="83"
		idade84="84"
		idade85="85"
		idade86="86"
		idade87="87"
		idade88="88"
		idade89="89"
		idade90="90"
		idade91="91"
		idade92="92"
		idade93="93"
		idade94="94"
		idade95="95"
		idade96="96"
		idade97="97"
		idade98="98"
		idade99="99"
		idade100="100"
		idade101="101"
		idade102="102"
		idade103="103"
		idade104="104"
		idade105="105"
		idade106="106"
		idade107="107"
		idade108="108"
		idade109="109"
		idade110="110"
		idade111="111"
		idade112="112"
		idade113="113"
		idade114="114"
		idade115="115"
		idade116="116"
		idade117="117"
		idade118="118"
		idade119="119"
		idade120="120"
		idade121="121"
		idade122="122"
		idade123="123"
		idade124="124"
		idade125="125"
		idade126="126"
		idade127="127"
		idade128="128"
		idade129="129"
		idade130="130"
		idade131="131"
		idade132="132"
		idade133="133"
		idade134="134"
		idade135="135"
		idade136="136"
		idade137="137"
		idade138="138"
		idade139="139";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			idade0=0;
			idade1=0;
			idade2=0;
			idade3=0;
			idade4=0;
			idade5=0;
			idade6=0;
			idade7=0;
			idade8=0;
			idade9=0;
			idade10=0;
			idade11=0;
			idade12=0;
			idade13=0;
			idade14=0;
			idade15=0;
			idade16=0;
			idade17=0;
			idade18=0;
			idade19=0;
			idade20=0;
			idade21=0;
			idade22=0;
			idade23=0;
			idade24=0;
			idade25=0;
			idade26=0;
			idade27=0;
			idade28=0;
			idade29=0;
			idade30=0;
			idade31=0;
			idade32=0;
			idade33=0;
			idade34=0;
			idade35=0;
			idade36=0;
			idade37=0;
			idade38=0;
			idade39=0;
			idade40=0;
			idade41=0;
			idade42=0;
			idade43=0;
			idade44=0;
			idade45=0;
			idade46=0;
			idade47=0;
			idade48=0;
			idade49=0;
			idade50=0;
			idade51=0;
			idade52=0;
			idade53=0;
			idade54=0;
			idade55=0;
			idade56=0;
			idade57=0;
			idade58=0;
			idade59=0;
			idade60=0;
			idade61=0;
			idade62=0;
			idade63=0;
			idade64=0;
			idade65=0;
			idade66=0;
			idade67=0;
			idade68=0;
			idade69=0;
			idade70=0;
			idade71=0;
			idade72=0;
			idade73=0;
			idade74=0;
			idade75=0;
			idade76=0;
			idade77=0;
			idade78=0;
			idade79=0;
			idade80=0;
			idade81=0;
			idade82=0;
			idade83=0;
			idade84=0;
			idade85=0;
			idade86=0;
			idade87=0;
			idade88=0;
			idade89=0;
			idade90=0;
			idade91=0;
			idade92=0;
			idade93=0;
			idade94=0;
			idade95=0;
			idade96=0;
			idade97=0;
			idade98=0;
			idade99=0;
			idade100=0;
			idade101=0;
			idade102=0;
			idade103=0;
			idade104=0;
			idade105=0;
			idade106=0;
			idade107=0;
			idade108=0;
			idade109=0;
			idade110=0;
			idade111=0;
			idade112=0;
			idade113=0;
			idade114=0;
			idade115=0;
			idade116=0;
			idade117=0;
			idade118=0;
			idade119=0;
			idade120=0;
			idade121=0;
			idade122=0;
			idade123=0;
			idade124=0;
			idade125=0;
			idade126=0;
			idade127=0;
			idade128=0;
			idade129=0;
			idade130=0;
			idade131=0;
			idade132=0;
			idade133=0;
			idade134=0;
			idade135=0;
			idade136=0;
			idade137=0;
			idade138=0;
			idade139=0;
		end;

	n_pess + 1;

	if idade =  0 then
		idade0  +1;
	else if idade =  1  then
		idade1  +1;
	else if idade =  2  then
		idade2  +1;
	else if idade =  3  then
		idade3  +1;
	else if idade =  4  then
		idade4  +1;
	else if idade =  5  then
		idade5  +1;
	else if idade =  6  then
		idade6  +1;
	else if idade =  7  then
		idade7  +1;
	else if idade =  8  then
		idade8  +1;
	else if idade =  9  then
		idade9  +1;
	else if idade =  10  then
		idade10  +1;
	else if idade =  11  then
		idade11  +1;
	else if idade =  12  then
		idade12  +1;
	else if idade =  13  then
		idade13  +1;
	else if idade =  14  then
		idade14  +1;
	else if idade =  15  then
		idade15  +1;
	else if idade =  16  then
		idade16  +1;
	else if idade =  17  then
		idade17  +1;
	else if idade =  18  then
		idade18  +1;
	else if idade =  19  then
		idade19  +1;
	else if idade =  20  then
		idade20  +1;
	else if idade =  21  then
		idade21  +1;
	else if idade =  22  then
		idade22  +1;
	else if idade =  23  then
		idade23  +1;
	else if idade =  24  then
		idade24  +1;
	else if idade =  25  then
		idade25  +1;
	else if idade =  26  then
		idade26  +1;
	else if idade =  27  then
		idade27  +1;
	else if idade =  28  then
		idade28  +1;
	else if idade =  29  then
		idade29  +1;
	else if idade =  30  then
		idade30  +1;
	else if idade =  31  then
		idade31  +1;
	else if idade =  32  then
		idade32  +1;
	else if idade =  33  then
		idade33  +1;
	else if idade =  34  then
		idade34  +1;
	else if idade =  35  then
		idade35  +1;
	else if idade =  36  then
		idade36  +1;
	else if idade =  37  then
		idade37  +1;
	else if idade =  38  then
		idade38  +1;
	else if idade =  39  then
		idade39  +1;
	else if idade =  40  then
		idade40  +1;
	else if idade =  41  then
		idade41  +1;
	else if idade =  42  then
		idade42  +1;
	else if idade =  43  then
		idade43  +1;
	else if idade =  44  then
		idade44  +1;
	else if idade =  45  then
		idade45  +1;
	else if idade =  46  then
		idade46  +1;
	else if idade =  47  then
		idade47  +1;
	else if idade =  48  then
		idade48  +1;
	else if idade =  49  then
		idade49  +1;
	else if idade =  50  then
		idade50  +1;
	else if idade =  51  then
		idade51  +1;
	else if idade =  52  then
		idade52  +1;
	else if idade =  53  then
		idade53  +1;
	else if idade =  54  then
		idade54  +1;
	else if idade =  55  then
		idade55  +1;
	else if idade =  56  then
		idade56  +1;
	else if idade =  57  then
		idade57  +1;
	else if idade =  58  then
		idade58  +1;
	else if idade =  59  then
		idade59  +1;
	else if idade =  60  then
		idade60  +1;
	else if idade =  61  then
		idade61  +1;
	else if idade =  62  then
		idade62  +1;
	else if idade =  63  then
		idade63  +1;
	else if idade =  64  then
		idade64  +1;
	else if idade =  65  then
		idade65  +1;
	else if idade =  66  then
		idade66  +1;
	else if idade =  67  then
		idade67  +1;
	else if idade =  68  then
		idade68  +1;
	else if idade =  69  then
		idade69  +1;
	else if idade =  70  then
		idade70  +1;
	else if idade =  71  then
		idade71  +1;
	else if idade =  72  then
		idade72  +1;
	else if idade =  73  then
		idade73  +1;
	else if idade =  74  then
		idade74  +1;
	else if idade =  75  then
		idade75  +1;
	else if idade =  76  then
		idade76  +1;
	else if idade =  77  then
		idade77  +1;
	else if idade =  78  then
		idade78  +1;
	else if idade =  79  then
		idade79  +1;
	else if idade =  80  then
		idade80  +1;
	else if idade =  81  then
		idade81  +1;
	else if idade =  82  then
		idade82  +1;
	else if idade =  83  then
		idade83  +1;
	else if idade =  84  then
		idade84  +1;
	else if idade =  85  then
		idade85  +1;
	else if idade =  86  then
		idade86  +1;
	else if idade =  87  then
		idade87  +1;
	else if idade =  88  then
		idade88  +1;
	else if idade =  89  then
		idade89  +1;
	else if idade =  90  then
		idade90  +1;
	else if idade =  91  then
		idade91  +1;
	else if idade =  92  then
		idade92  +1;
	else if idade =  93  then
		idade93  +1;
	else if idade =  94  then
		idade94  +1;
	else if idade =  95  then
		idade95  +1;
	else if idade =  96  then
		idade96  +1;
	else if idade =  97  then
		idade97  +1;
	else if idade =  98  then
		idade98  +1;
	else if idade =  99  then
		idade99  +1;
	else if idade =  100  then
		idade100  +1;
	else if idade =  101  then
		idade101  +1;
	else if idade =  102  then
		idade102  +1;
	else if idade =  103  then
		idade103  +1;
	else if idade =  104  then
		idade104  +1;
	else if idade =  105  then
		idade105  +1;
	else if idade =  106  then
		idade106  +1;
	else if idade =  107  then
		idade107  +1;
	else if idade =  108  then
		idade108  +1;
	else if idade =  109  then
		idade109  +1;
	else if idade =  110  then
		idade110  +1;
	else if idade =  111  then
		idade111  +1;
	else if idade =  112  then
		idade112  +1;
	else if idade =  113  then
		idade113  +1;
	else if idade =  114  then
		idade114  +1;
	else if idade =  115  then
		idade115  +1;
	else if idade =  116  then
		idade116  +1;
	else if idade =  117  then
		idade117  +1;
	else if idade =  118  then
		idade118  +1;
	else if idade =  119  then
		idade119  +1;
	else if idade =  120  then
		idade120  +1;
	else if idade =  121  then
		idade121  +1;
	else if idade =  122  then
		idade122  +1;
	else if idade =  123  then
		idade123  +1;
	else if idade =  124  then
		idade124  +1;
	else if idade =  125  then
		idade125  +1;
	else if idade =  126  then
		idade126  +1;
	else if idade =  127  then
		idade127  +1;
	else if idade =  128  then
		idade128  +1;
	else if idade =  129  then
		idade129  +1;
	else if idade =  130  then
		idade130  +1;
	else if idade =  131  then
		idade131  +1;
	else if idade =  132  then
		idade132  +1;
	else if idade =  133  then
		idade133  +1;
	else if idade =  134  then
		idade134  +1;
	else if idade =  135  then
		idade135  +1;
	else if idade =  136  then
		idade136  +1;
	else if idade =  137  then
		idade137  +1;
	else if idade =  138  then
		idade138  +1;
	else if idade =  139  then
		idade139  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/*contagem cor_raca */
data cenden.dom_cor_raca;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom cor_raca1 cor_raca2 cor_raca3 cor_raca4 cor_raca5 cor_raca6 n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom cor_raca1 cor_raca2 cor_raca3 cor_raca4 cor_raca5 cor_raca6 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		cor_raca1="Branca"
		cor_raca2="Preta"
		cor_raca3="Amarela"
		cor_raca4="Parda"
		cor_raca5="Indígena"
		cor_raca6="Ignorado";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			cor_raca1=0;
			cor_raca2=0;
			cor_raca3=0;
			cor_raca4=0;
			cor_raca5=0;
			cor_raca6=0;
		end;

	n_pess + 1;

	if cor_raca =  1 then
		cor_raca1  +1;
	else if cor_raca =  2  then
		cor_raca2  +1;
	else if cor_raca =  3  then
		cor_raca3  +1;
	else if cor_raca =  4  then
		cor_raca4  +1;
	else if cor_raca =  5  then
		cor_raca5  +1;
	else if cor_raca =  9  then
		cor_raca6  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* instrucao */
data cenden.dom_instrucao;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom instrucao1 instrucao2 instrucao3 instrucao4 instrucao5  n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom instrucao1 instrucao2 instrucao3 instrucao4 instrucao5 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		instrucao1="Sem instrução e fundamental incompleto"
		instrucao2="Fundamental completo e médio incompleto"
		instrucao3="Médio completo e superior incompleto"
		instrucao4="Superior completo"
		instrucao5="Não determinado";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			instrucao1=0;
			instrucao2=0;
			instrucao3=0;
			instrucao4=0;
			instrucao5=0;
		end;

	n_pess + 1;

	if instrucao =  1 then
		instrucao1  +1;
	else if instrucao =  2  then
		instrucao2  +1;
	else if instrucao =  3  then
		instrucao3  +1;
	else if instrucao =  4  then
		instrucao4  +1;
	else if instrucao =  5  then
		instrucao5  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* Estado Civil */
data cenden.dom_est_civil;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom est_civil1 est_civil2 est_civil3 est_civil4 est_civil5 est_civil6
		n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom est_civil1 est_civil2 est_civil3 est_civil4 est_civil5 est_civil6 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		est_civil1="Casado(a)"
		est_civil2="Desquitado(a) ou separado(a) judicialmente"
		est_civil3="Divorciado(a)"
		est_civil4="Viúvo(a)"
		est_civil5="Solteiro(a)"
		est_civil6="."
	;

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			est_civil1=0;
			est_civil2=0;
			est_civil3=0;
			est_civil4=0;
			est_civil5=0;
			est_civil6=0;
		end;

	n_pess + 1;

	if est_civil =  1 then
		est_civil1  +1;
	else if est_civil =  2  then
		est_civil2  +1;
	else if est_civil =  3  then
		est_civil3  +1;
	else if est_civil =  4  then
		est_civil4  +1;
	else if est_civil =  5  then
		est_civil5  +1;
	else if est_civil =.    then
		est_civil6  +1;
	;
	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;
run;

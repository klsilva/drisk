/* Realiza contagem para cada uma das variáveis do Cenário 1 para a unidade de investigação domicílio */

options nodate nocenter ls=132 ps = 80;
libname outCD "/*caminho para biblioteca */";

/* contagem por sexo */
data outCD.dom_sexo;
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
data outCD.dom_idade;
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
data outCD.dom_cor_raca;
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

	/* dificul_cam */
data outCD.dom_dificul_cam;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom dificul_cam1 dificul_cam2 dificul_cam3 dificul_cam4 dificul_cam5 n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom dificul_cam1 dificul_cam2 dificul_cam3 dificul_cam4 dificul_cam5 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		dificul_cam1="Sim, não consegue de modo algum"
		dificul_cam2="Sim, grande dificuldade"
		dificul_cam3="Sim, alguma dificuldade"
		dificul_cam4="Não, nenhuma dificuldade"
		dificul_cam5="Ignorado";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			dificul_cam1=0;
			dificul_cam2=0;
			dificul_cam3=0;
			dificul_cam4=0;
			dificul_cam5=0;
		end;

	n_pess + 1;

	if dificul_cam =  1 then
		dificul_cam1  +1;
	else if dificul_cam =  2  then
		dificul_cam2  +1;
	else if dificul_cam =  3  then
		dificul_cam3  +1;
	else if dificul_cam =  4  then
		dificul_cam4  +1;
	else if dificul_cam =  9  then
		dificul_cam5  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* dificul_ouv */
data outCD.dom_dificul_ouv;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom dificul_ouv1 dificul_ouv2 dificul_ouv3 dificul_ouv4 dificul_ouv5 n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom dificul_ouv1 dificul_ouv2 dificul_ouv3 dificul_ouv4 dificul_ouv5 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		dificul_ouv1="Sim, não consegue de modo algum"
		dificul_ouv2="Sim, grande dificuldade"
		dificul_ouv3="Sim, alguma dificuldade"
		dificul_ouv4="Não, nenhuma dificuldade"
		dificul_ouv5="Ignorado";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			dificul_ouv1=0;
			dificul_ouv2=0;
			dificul_ouv3=0;
			dificul_ouv4=0;
			dificul_ouv5=0;
		end;

	n_pess + 1;

	if dificul_ouv =  1 then
		dificul_ouv1  +1;
	else if dificul_ouv =  2  then
		dificul_ouv2  +1;
	else if dificul_ouv =  3  then
		dificul_ouv3  +1;
	else if dificul_ouv =  4  then
		dificul_ouv4  +1;
	else if dificul_ouv =  9  then
		dificul_ouv5  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* dificul_enx */
data outCD.dom_dificul_enx;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom dificul_enx1 dificul_enx2 dificul_enx3 dificul_enx4 dificul_enx5 n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom dificul_enx1 dificul_enx2 dificul_enx3 dificul_enx4 dificul_enx5 n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		dificul_enx1="Sim, não consegue de modo algum"
		dificul_enx2="Sim, grande dificuldade"
		dificul_enx3="Sim, alguma dificuldade"
		dificul_enx4="Não, nenhuma dificuldade"
		dificul_enx5="Ignorado";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			dificul_enx1=0;
			dificul_enx2=0;
			dificul_enx3=0;
			dificul_enx4=0;
			dificul_enx5=0;
		end;

	n_pess + 1;

	if dificul_enx =  1 then
		dificul_enx1  +1;
	else if dificul_enx =  2  then
		dificul_enx2  +1;
	else if dificul_enx =  3  then
		dificul_enx3  +1;
	else if dificul_enx =  4  then
		dificul_enx4  +1;
	else if dificul_enx =  9  then
		dificul_enx5  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* contagem pais_nasc */
data outCD.dom_pais_nasc;
	set outCD.amostra_pess;
	by  UF cat_mun apond controle;
	retain n_dom pais_nasc1 pais_nasc2 pais_nasc3 pais_nasc4 pais_nasc5 pais_nasc6 pais_nasc7 pais_nasc8 pais_nasc9
		pais_nasc10 pais_nasc11 pais_nasc12 pais_nasc13 pais_nasc14 pais_nasc15 pais_nasc16 pais_nasc17 pais_nasc18
		pais_nasc19 pais_nasc20 pais_nasc21 pais_nasc22 pais_nasc23 pais_nasc24 pais_nasc25 pais_nasc26 pais_nasc27
		pais_nasc28 pais_nasc29 pais_nasc30 pais_nasc31 pais_nasc32 pais_nasc33 pais_nasc34 pais_nasc35 pais_nasc36
		pais_nasc37 pais_nasc38 pais_nasc39 pais_nasc40 pais_nasc41 pais_nasc42 pais_nasc43 pais_nasc44 pais_nasc45
		pais_nasc46 pais_nasc47 pais_nasc48 pais_nasc49 pais_nasc50 pais_nasc51 pais_nasc52 pais_nasc53 pais_nasc54
		pais_nasc55 pais_nasc56 pais_nasc57 pais_nasc58 pais_nasc59 pais_nasc60 pais_nasc61 pais_nasc62 pais_nasc63
		pais_nasc64 pais_nasc65 pais_nasc66 pais_nasc67 pais_nasc68 pais_nasc69 pais_nasc70 pais_nasc71 pais_nasc72
		pais_nasc73 pais_nasc74 pais_nasc75 pais_nasc76 pais_nasc77 pais_nasc78 pais_nasc79 pais_nasc80 pais_nasc81
		pais_nasc82 pais_nasc83 pais_nasc84 pais_nasc85 pais_nasc86 pais_nasc87 pais_nasc88 pais_nasc89 pais_nasc90
		pais_nasc91 pais_nasc92 pais_nasc93 pais_nasc94 pais_nasc95 pais_nasc96 pais_nasc97 pais_nasc98 pais_nasc99
		pais_nasc100 pais_nasc101 pais_nasc102 pais_nasc103 pais_nasc104 pais_nasc105 pais_nasc106 pais_nasc107
		pais_nasc108 pais_nasc109 pais_nasc110 pais_nasc111 pais_nasc112 pais_nasc113 pais_nasc114 pais_nasc115
		pais_nasc116 pais_nasc117 pais_nasc118 pais_nasc119 pais_nasc120 pais_nasc121 pais_nasc122 pais_nasc123
		pais_nasc124 pais_nasc125 pais_nasc126 pais_nasc127 pais_nasc128 pais_nasc129 pais_nasc130 pais_nasc131
		pais_nasc132 pais_nasc133 pais_nasc134 pais_nasc135 pais_nasc136 pais_nasc137 pais_nasc138 pais_nasc139
		pais_nasc140 pais_nasc141 pais_nasc142 pais_nasc143 pais_nasc144 pais_nasc145 pais_nasc146 pais_nasc147
		pais_nasc148 pais_nasc149 pais_nasc150 pais_nasc151 pais_nasc152 pais_nasc153 pais_nasc154 pais_nasc155
		pais_nasc156 pais_nasc157 pais_nasc158 pais_nasc159 pais_nasc160 pais_nasc161 pais_nasc162 pais_nasc163
		pais_nasc164 pais_nasc165 pais_nasc166 pais_nasc167 pais_nasc168 pais_nasc169 pais_nasc170 pais_nasc171
		pais_nasc172 pais_nasc173 pais_nasc174 pais_nasc175 pais_nasc176 pais_nasc177 pais_nasc178 pais_nasc179
		pais_nasc180 pais_nasc181 pais_nasc182 pais_nasc183 pais_nasc184 pais_nasc185 pais_nasc186 pais_nasc187
		pais_nasc188 pais_nasc189 pais_nasc190 pais_nasc191 pais_nasc192 pais_nasc193 pais_nasc194 pais_nasc195
		pais_nasc196 pais_nasc197 pais_nasc198 pais_nasc199  n_pess;
	keep UF  cat_mun apond cat_micro cat_meso macro rm controle n_dom pais_nasc1 pais_nasc2 pais_nasc3 
		pais_nasc4 pais_nasc5 pais_nasc6 pais_nasc7 pais_nasc8 pais_nasc9  pais_nasc10 pais_nasc11 
		pais_nasc12 pais_nasc13 pais_nasc14 pais_nasc15 pais_nasc16 pais_nasc17 pais_nasc18
		pais_nasc19 pais_nasc20 pais_nasc21 pais_nasc22 pais_nasc23 pais_nasc24 pais_nasc25 pais_nasc26 pais_nasc27
		pais_nasc28 pais_nasc29 pais_nasc30 pais_nasc31 pais_nasc32 pais_nasc33 pais_nasc34 pais_nasc35 pais_nasc36
		pais_nasc37 pais_nasc38 pais_nasc39 pais_nasc40 pais_nasc41 pais_nasc42 pais_nasc43 pais_nasc44 pais_nasc45
		pais_nasc46 pais_nasc47 pais_nasc48 pais_nasc49 pais_nasc50 pais_nasc51 pais_nasc52 pais_nasc53 pais_nasc54
		pais_nasc55 pais_nasc56 pais_nasc57 pais_nasc58 pais_nasc59 pais_nasc60 pais_nasc61 pais_nasc62 pais_nasc63
		pais_nasc64 pais_nasc65 pais_nasc66 pais_nasc67 pais_nasc68 pais_nasc69 pais_nasc70 pais_nasc71 pais_nasc72
		pais_nasc73 pais_nasc74 pais_nasc75 pais_nasc76 pais_nasc77 pais_nasc78 pais_nasc79 pais_nasc80 pais_nasc81
		pais_nasc82 pais_nasc83 pais_nasc84 pais_nasc85 pais_nasc86 pais_nasc87 pais_nasc88 pais_nasc89 pais_nasc90
		pais_nasc91 pais_nasc92 pais_nasc93 pais_nasc94 pais_nasc95 pais_nasc96 pais_nasc97 pais_nasc98 pais_nasc99
		pais_nasc100 pais_nasc101 pais_nasc102 pais_nasc103 pais_nasc104 pais_nasc105 pais_nasc106 pais_nasc107
		pais_nasc108 pais_nasc109 pais_nasc110 pais_nasc111 pais_nasc112 pais_nasc113 pais_nasc114 pais_nasc115
		pais_nasc116 pais_nasc117 pais_nasc118 pais_nasc119 pais_nasc120 pais_nasc121 pais_nasc122 pais_nasc123
		pais_nasc124 pais_nasc125 pais_nasc126 pais_nasc127 pais_nasc128 pais_nasc129 pais_nasc130 pais_nasc131
		pais_nasc132 pais_nasc133 pais_nasc134 pais_nasc135 pais_nasc136 pais_nasc137 pais_nasc138 pais_nasc139
		pais_nasc140 pais_nasc141 pais_nasc142 pais_nasc143 pais_nasc144 pais_nasc145 pais_nasc146 pais_nasc147
		pais_nasc148 pais_nasc149 pais_nasc150 pais_nasc151 pais_nasc152 pais_nasc153 pais_nasc154 pais_nasc155
		pais_nasc156 pais_nasc157 pais_nasc158 pais_nasc159 pais_nasc160 pais_nasc161 pais_nasc162 pais_nasc163
		pais_nasc164 pais_nasc165 pais_nasc166 pais_nasc167 pais_nasc168 pais_nasc169 pais_nasc170 pais_nasc171
		pais_nasc172 pais_nasc173 pais_nasc174 pais_nasc175 pais_nasc176 pais_nasc177 pais_nasc178 pais_nasc179
		pais_nasc180 pais_nasc181 pais_nasc182 pais_nasc183 pais_nasc184 pais_nasc185 pais_nasc186 pais_nasc187
		pais_nasc188 pais_nasc189 pais_nasc190 pais_nasc191 pais_nasc192 pais_nasc193 pais_nasc194 pais_nasc195
		pais_nasc196 pais_nasc197 pais_nasc198 pais_nasc199  n_pess;
	label n_dom  = "Número de domicílios"
		n_pess = "Número de pessoas"
		pais_nasc1="ÁFRICA DO SUL"
		pais_nasc2="ANGOLA"
		pais_nasc3="ARGÉLIA"
		pais_nasc4="BENIN"
		pais_nasc5="BOTSWANA"
		pais_nasc6="BURKINA FASSO"
		pais_nasc7="BURUNDI"
		pais_nasc8="CABO VERDE"
		pais_nasc9="CAMARÕES"
		pais_nasc10="CHADE"
		pais_nasc11="COMORES"
		pais_nasc12="CONGO"
		pais_nasc13="COSTA DO MARFIM"
		pais_nasc14="DJIBUTI"
		pais_nasc15="EGITO"
		pais_nasc16="ERITRÉIA"
		pais_nasc17="ETIÓPIA"
		pais_nasc18="GABÃO"
		pais_nasc19="GÂMBIA"
		pais_nasc20="GANA"
		pais_nasc21="GUINÉ"
		pais_nasc22="GUINÉ BISSAU"
		pais_nasc23="GUINÉ EQUATORIAL"
		pais_nasc24="LESOTO"
		pais_nasc25="LIBÉRIA"
		pais_nasc26="LÍBIA"
		pais_nasc27="MADAGASCAR"
		pais_nasc28="MALAWI"
		pais_nasc29="MALI"
		pais_nasc30="MARROCOS"
		pais_nasc31="MAURÍCIO"
		pais_nasc32="MAURITÂNIA"
		pais_nasc33="MOÇAMBIQUE"
		pais_nasc34="NAMÍBIA"
		pais_nasc35="NIGER"
		pais_nasc36="NIGÉRIA"
		pais_nasc37="QUÊNIA"
		pais_nasc38="REPÚBLICA CENTRO AFRICANA"
		pais_nasc39="REPÚBLICA DEMOCRÁTICA DO CONGO"
		pais_nasc40="RUANDA"
		pais_nasc41="SÃO TOMÉ E PRÍNCIPE"
		pais_nasc42="SENEGAL"
		pais_nasc43="SERRA LEOA"
		pais_nasc44="SEYCHELLES"
		pais_nasc45="SOMÁLIA"
		pais_nasc46="SUAZILÂNDIA"
		pais_nasc47="SUDÃO"
		pais_nasc48="TANZÂNIA"
		pais_nasc49="TOGO"
		pais_nasc50="TUNÍSIA"
		pais_nasc51="UGANDA"
		pais_nasc52="ZÂMBIA"
		pais_nasc53="ZIMBABUE"
		pais_nasc54="ANTÍGUA E BARBUDA"
		pais_nasc55="ARGENTINA"
		pais_nasc56="BAHAMAS"
		pais_nasc57="BARBADOS"
		pais_nasc58="BELIZE"
		pais_nasc59="BOLÍVIA"
		pais_nasc60="CANADÁ"
		pais_nasc61="CHILE"
		pais_nasc62="COLÔMBIA"
		pais_nasc63="COSTA RICA"
		pais_nasc64="CUBA"
		pais_nasc65="DOMINICA"
		pais_nasc66="EL SALVADOR"
		pais_nasc67="EQUADOR"
		pais_nasc68="ESTADOS UNIDOS"
		pais_nasc69="GRANADA"
		pais_nasc70="GUATEMALA"
		pais_nasc71="GUIANA"
		pais_nasc72="GUIANA FRANCESA"
		pais_nasc73="HAITI"
		pais_nasc74="HONDURAS"
		pais_nasc75="JAMAICA"
		pais_nasc76="MÉXICO"
		pais_nasc77="NICARÁGUA"
		pais_nasc78="PANAMÁ"
		pais_nasc79="PARAGUAI"
		pais_nasc80="PERU"
		pais_nasc81="REPÚBLICA DOMINICANA"
		pais_nasc82="SANTA LÚCIA"
		pais_nasc83="SÃO CRISTÓVÃO E NEVIS"
		pais_nasc84="SAO VICENTE E GRANADINAS"
		pais_nasc85="SURINAME"
		pais_nasc86="TRINIDAD E TOBAGO"
		pais_nasc87="URUGUAI"
		pais_nasc88="VENEZUELA"
		pais_nasc89="AFEGANISTÃO"
		pais_nasc90="ARÁBIA SAUDITA"
		pais_nasc91="ARMÊNIA"
		pais_nasc92="AZERBAIDJÃO"
		pais_nasc93="BAHREIN"
		pais_nasc94="BANGLADESH"
		pais_nasc95="BRUNEI DARUSSALAN"
		pais_nasc96="BUTÃO"
		pais_nasc97="CAMBOJA"
		pais_nasc98="CASAQUISTÃO"
		pais_nasc99="CATAR"
		pais_nasc100="CHINA"
		pais_nasc101="CHIPRE"
		pais_nasc102="CINGAPURA"
		pais_nasc103="EMIRADOS ÁRABES UNIDOS"
		pais_nasc104="FILIPINAS"
		pais_nasc105="GEÓRGIA"
		pais_nasc106="IÊMEN"
		pais_nasc107="ÍNDIA"
		pais_nasc108="INDONÉSIA"
		pais_nasc109="IRÃ"
		pais_nasc110="IRAQUE"
		pais_nasc111="ISRAEL"
		pais_nasc112="JAPÃO"
		pais_nasc113="JORDÂNIA"
		pais_nasc114="KUWAIT"
		pais_nasc115="LÍBANO"
		pais_nasc116="MALÁSIA"
		pais_nasc117="MALDIVAS"
		pais_nasc118="MIANMAR"
		pais_nasc119="MONGÓLIA"
		pais_nasc120="NEPAL"
		pais_nasc121="OMAN"
		pais_nasc122="PAQUISTÃO"
		pais_nasc123="QUIRGUISTÃO"
		pais_nasc124="REPÚBLICA DA COREIA"
		pais_nasc125="REPÚBLICA DEMOCRÁTICA POPULAR DO LAOS"
		pais_nasc126="REPÚBLICA POPULAR DEMOCRÁTICA DA COREIA"
		pais_nasc127="SÍRIA"
		pais_nasc128="SRI LANKA"
		pais_nasc129="TADJIQUISTÃO"
		pais_nasc130="TAILÂNDIA"
		pais_nasc131="TIMOR LESTE"
		pais_nasc132="TURCOMENISTÃO"
		pais_nasc133="TURQUIA"
		pais_nasc134="UZBEQUISTÃO"
		pais_nasc135="VIETNÃ"
		pais_nasc136="ALBÂNIA"
		pais_nasc137="ALEMANHA"
		pais_nasc138="ANDORRA"
		pais_nasc139="ÁUSTRIA"
		pais_nasc140="BELARUS"
		pais_nasc141="BÉLGICA"
		pais_nasc142="BÓSNIA E HERZEGOVINA"
		pais_nasc143="BULGÁRIA"
		pais_nasc144="CROÁCIA"
		pais_nasc145="DINAMARCA"
		pais_nasc146="ESCÓCIA"
		pais_nasc147="ESLOVÁQUIA"
		pais_nasc148="ESLOVÊNIA"
		pais_nasc149="ESPANHA"
		pais_nasc150="ESTÔNIA"
		pais_nasc151="FINLÂNDIA"
		pais_nasc152="FRANÇA"
		pais_nasc153="GRÉCIA"
		pais_nasc154="HOLANDA"
		pais_nasc155="HUNGRIA"
		pais_nasc156="INGLATERRA"
		pais_nasc157="IRLANDA"
		pais_nasc158="IRLANDA DO NORTE"
		pais_nasc159="ISLÂNDIA"
		pais_nasc160="ITÁLIA"
		pais_nasc161="LETÔNIA"
		pais_nasc162="LIECHTENSTEIN"
		pais_nasc163="LITUÂNIA"
		pais_nasc164="LUXEMBURGO"
		pais_nasc165="MACEDÔNIA"
		pais_nasc166="MALTA"
		pais_nasc167="MÔNACO"
		pais_nasc168="MONTENEGRO"
		pais_nasc169="NORUEGA"
		pais_nasc170="PAÍS DE GALES"
		pais_nasc171="POLÔNIA"
		pais_nasc172="PORTUGAL"
		pais_nasc173="REINO UNIDO"
		pais_nasc174="REPÚBLICA DA MOLDAVIA"
		pais_nasc175="REPÚBLICA TCHECA"
		pais_nasc176="ROMÊNIA"
		pais_nasc177="RÚSSIA"
		pais_nasc178="SAN MARINO"
		pais_nasc179="SÉRVIA"
		pais_nasc180="SUÉCIA"
		pais_nasc181="SUÍÇA"
		pais_nasc182="UCRÂNIA"
		pais_nasc183="VATICANO"
		pais_nasc184="AUSTRÁLIA"
		pais_nasc185="FEDERAÇÃO DOS ESTADOS DA MICRONÉSIA"
		pais_nasc186="FIJI"
		pais_nasc187="ILHAS MARSHALL"
		pais_nasc188="ILHAS SALOMÃO"
		pais_nasc189="KIRIBATI"
		pais_nasc190="NAURU"
		pais_nasc191="NOVA ZELÂNDIA"
		pais_nasc192="PALAU"
		pais_nasc193="PAPUA NOVA GUINÉ"
		pais_nasc194="SAMOA"
		pais_nasc195="TONGA"
		pais_nasc196="TUVALU"
		pais_nasc197="VANUATU"
		pais_nasc198="IGNORADO"
		pais_nasc199="NÃO SABIA PAÍS ESTRANGEIRO"
        pais_nasc200="NA";

	if first.UF or first.cat_mun or first.apond or first.cat_micro or first.cat_meso or first.macro or first.rm or first.controle then
		do;
			n_dom  = 1;
			n_pess = 0;
			pais_nasc1=0;
			pais_nasc2=0;
			pais_nasc3=0;
			pais_nasc4=0;
			pais_nasc5=0;
			pais_nasc6=0;
			pais_nasc7=0;
			pais_nasc8=0;
			pais_nasc9=0;
			pais_nasc10=0;
			pais_nasc11=0;
			pais_nasc12=0;
			pais_nasc13=0;
			pais_nasc14=0;
			pais_nasc15=0;
			pais_nasc16=0;
			pais_nasc17=0;
			pais_nasc18=0;
			pais_nasc19=0;
			pais_nasc20=0;
			pais_nasc21=0;
			pais_nasc22=0;
			pais_nasc23=0;
			pais_nasc24=0;
			pais_nasc25=0;
			pais_nasc26=0;
			pais_nasc27=0;
			pais_nasc28=0;
			pais_nasc29=0;
			pais_nasc30=0;
			pais_nasc31=0;
			pais_nasc32=0;
			pais_nasc33=0;
			pais_nasc34=0;
			pais_nasc35=0;
			pais_nasc36=0;
			pais_nasc37=0;
			pais_nasc38=0;
			pais_nasc39=0;
			pais_nasc40=0;
			pais_nasc41=0;
			pais_nasc42=0;
			pais_nasc43=0;
			pais_nasc44=0;
			pais_nasc45=0;
			pais_nasc46=0;
			pais_nasc47=0;
			pais_nasc48=0;
			pais_nasc49=0;
			pais_nasc50=0;
			pais_nasc51=0;
			pais_nasc52=0;
			pais_nasc53=0;
			pais_nasc54=0;
			pais_nasc55=0;
			pais_nasc56=0;
			pais_nasc57=0;
			pais_nasc58=0;
			pais_nasc59=0;
			pais_nasc60=0;
			pais_nasc61=0;
			pais_nasc62=0;
			pais_nasc63=0;
			pais_nasc64=0;
			pais_nasc65=0;
			pais_nasc66=0;
			pais_nasc67=0;
			pais_nasc68=0;
			pais_nasc69=0;
			pais_nasc70=0;
			pais_nasc71=0;
			pais_nasc72=0;
			pais_nasc73=0;
			pais_nasc74=0;
			pais_nasc75=0;
			pais_nasc76=0;
			pais_nasc77=0;
			pais_nasc78=0;
			pais_nasc79=0;
			pais_nasc80=0;
			pais_nasc81=0;
			pais_nasc82=0;
			pais_nasc83=0;
			pais_nasc84=0;
			pais_nasc85=0;
			pais_nasc86=0;
			pais_nasc87=0;
			pais_nasc88=0;
			pais_nasc89=0;
			pais_nasc90=0;
			pais_nasc91=0;
			pais_nasc92=0;
			pais_nasc93=0;
			pais_nasc94=0;
			pais_nasc95=0;
			pais_nasc96=0;
			pais_nasc97=0;
			pais_nasc98=0;
			pais_nasc99=0;
			pais_nasc100=0;
			pais_nasc101=0;
			pais_nasc102=0;
			pais_nasc103=0;
			pais_nasc104=0;
			pais_nasc105=0;
			pais_nasc106=0;
			pais_nasc107=0;
			pais_nasc108=0;
			pais_nasc109=0;
			pais_nasc110=0;
			pais_nasc111=0;
			pais_nasc112=0;
			pais_nasc113=0;
			pais_nasc114=0;
			pais_nasc115=0;
			pais_nasc116=0;
			pais_nasc117=0;
			pais_nasc118=0;
			pais_nasc119=0;
			pais_nasc120=0;
			pais_nasc121=0;
			pais_nasc122=0;
			pais_nasc123=0;
			pais_nasc124=0;
			pais_nasc125=0;
			pais_nasc126=0;
			pais_nasc127=0;
			pais_nasc128=0;
			pais_nasc129=0;
			pais_nasc130=0;
			pais_nasc131=0;
			pais_nasc132=0;
			pais_nasc133=0;
			pais_nasc134=0;
			pais_nasc135=0;
			pais_nasc136=0;
			pais_nasc137=0;
			pais_nasc138=0;
			pais_nasc139=0;
			pais_nasc140=0;
			pais_nasc141=0;
			pais_nasc142=0;
			pais_nasc143=0;
			pais_nasc144=0;
			pais_nasc145=0;
			pais_nasc146=0;
			pais_nasc147=0;
			pais_nasc148=0;
			pais_nasc149=0;
			pais_nasc150=0;
			pais_nasc151=0;
			pais_nasc152=0;
			pais_nasc153=0;
			pais_nasc154=0;
			pais_nasc155=0;
			pais_nasc156=0;
			pais_nasc157=0;
			pais_nasc158=0;
			pais_nasc159=0;
			pais_nasc160=0;
			pais_nasc161=0;
			pais_nasc162=0;
			pais_nasc163=0;
			pais_nasc164=0;
			pais_nasc165=0;
			pais_nasc166=0;
			pais_nasc167=0;
			pais_nasc168=0;
			pais_nasc169=0;
			pais_nasc170=0;
			pais_nasc171=0;
			pais_nasc172=0;
			pais_nasc173=0;
			pais_nasc174=0;
			pais_nasc175=0;
			pais_nasc176=0;
			pais_nasc177=0;
			pais_nasc178=0;
			pais_nasc179=0;
			pais_nasc180=0;
			pais_nasc181=0;
			pais_nasc182=0;
			pais_nasc183=0;
			pais_nasc184=0;
			pais_nasc185=0;
			pais_nasc186=0;
			pais_nasc187=0;
			pais_nasc188=0;
			pais_nasc189=0;
			pais_nasc190=0;
			pais_nasc191=0;
			pais_nasc192=0;
			pais_nasc193=0;
			pais_nasc194=0;
			pais_nasc195=0;
			pais_nasc196=0;
			pais_nasc197=0;
			pais_nasc198=0;
			pais_nasc199=0;
            pais_nasc200=0;
		end;

	n_pess + 1;

	if pais_nasc =  8000710 then
		pais_nasc1  +1;
	else if pais_nasc =  8000024  then
		pais_nasc2  +1;
	else if pais_nasc =  8000012  then
		pais_nasc3  +1;
	else if pais_nasc =  8000204  then
		pais_nasc4  +1;
	else if pais_nasc =  8000072  then
		pais_nasc5  +1;
	else if pais_nasc =  8000854  then
		pais_nasc6  +1;
	else if pais_nasc =  8000108  then
		pais_nasc7  +1;
	else if pais_nasc =  8000132  then
		pais_nasc8  +1;
	else if pais_nasc =  8000120  then
		pais_nasc9  +1;
	else if pais_nasc =  8000148  then
		pais_nasc10  +1;
	else if pais_nasc =  8000174  then
		pais_nasc11  +1;
	else if pais_nasc =  8000178  then
		pais_nasc12  +1;
	else if pais_nasc =  8000384  then
		pais_nasc13  +1;
	else if pais_nasc =  8000262  then
		pais_nasc14  +1;
	else if pais_nasc =  8000818  then
		pais_nasc15  +1;
	else if pais_nasc =  8000232  then
		pais_nasc16  +1;
	else if pais_nasc =  8000231  then
		pais_nasc17  +1;
	else if pais_nasc =  8000266  then
		pais_nasc18  +1;
	else if pais_nasc =  8000270  then
		pais_nasc19  +1;
	else if pais_nasc =  8000288  then
		pais_nasc20  +1;
	else if pais_nasc =  8000324  then
		pais_nasc21  +1;
	else if pais_nasc =  8000624  then
		pais_nasc22  +1;
	else if pais_nasc =  8000226  then
		pais_nasc23  +1;
	else if pais_nasc =  8000426  then
		pais_nasc24  +1;
	else if pais_nasc =  8000430  then
		pais_nasc25  +1;
	else if pais_nasc =  8000434  then
		pais_nasc26  +1;
	else if pais_nasc =  8000450  then
		pais_nasc27  +1;
	else if pais_nasc =  8000454  then
		pais_nasc28  +1;
	else if pais_nasc =  8000466  then
		pais_nasc29  +1;
	else if pais_nasc =  8000504  then
		pais_nasc30  +1;
	else if pais_nasc =  8000480  then
		pais_nasc31  +1;
	else if pais_nasc =  8000478  then
		pais_nasc32  +1;
	else if pais_nasc =  8000508  then
		pais_nasc33  +1;
	else if pais_nasc =  8000516  then
		pais_nasc34  +1;
	else if pais_nasc =  8000562  then
		pais_nasc35  +1;
	else if pais_nasc =  8000566  then
		pais_nasc36  +1;
	else if pais_nasc =  8000404  then
		pais_nasc37  +1;
	else if pais_nasc =  8000140  then
		pais_nasc38  +1;
	else if pais_nasc =  8000180  then
		pais_nasc39  +1;
	else if pais_nasc =  8000646  then
		pais_nasc40  +1;
	else if pais_nasc =  8000678  then
		pais_nasc41  +1;
	else if pais_nasc =  8000686  then
		pais_nasc42  +1;
	else if pais_nasc =  8000694  then
		pais_nasc43  +1;
	else if pais_nasc =  8000690  then
		pais_nasc44  +1;
	else if pais_nasc =  8000706  then
		pais_nasc45  +1;
	else if pais_nasc =  8000748  then
		pais_nasc46  +1;
	else if pais_nasc =  8000736  then
		pais_nasc47  +1;
	else if pais_nasc =  8000834  then
		pais_nasc48  +1;
	else if pais_nasc =  8000768  then
		pais_nasc49  +1;
	else if pais_nasc =  8000788  then
		pais_nasc50  +1;
	else if pais_nasc =  8000800  then
		pais_nasc51  +1;
	else if pais_nasc =  8000894  then
		pais_nasc52  +1;
	else if pais_nasc =  8000716  then
		pais_nasc53  +1;
	else if pais_nasc =  8000028  then
		pais_nasc54  +1;
	else if pais_nasc =  8000032  then
		pais_nasc55  +1;
	else if pais_nasc =  8000044  then
		pais_nasc56  +1;
	else if pais_nasc =  8000052  then
		pais_nasc57  +1;
	else if pais_nasc =  8000084  then
		pais_nasc58  +1;
	else if pais_nasc =  8000068  then
		pais_nasc59  +1;
	else if pais_nasc =  8000124  then
		pais_nasc60  +1;
	else if pais_nasc =  8000152  then
		pais_nasc61  +1;
	else if pais_nasc =  8000170  then
		pais_nasc62  +1;
	else if pais_nasc =  8000188  then
		pais_nasc63  +1;
	else if pais_nasc =  8000192  then
		pais_nasc64  +1;
	else if pais_nasc =  8000212  then
		pais_nasc65  +1;
	else if pais_nasc =  8000222  then
		pais_nasc66  +1;
	else if pais_nasc =  8000218  then
		pais_nasc67  +1;
	else if pais_nasc =  8000840  then
		pais_nasc68  +1;
	else if pais_nasc =  8000308  then
		pais_nasc69  +1;
	else if pais_nasc =  8000320  then
		pais_nasc70  +1;
	else if pais_nasc =  8000328  then
		pais_nasc71  +1;
	else if pais_nasc =  8000254  then
		pais_nasc72  +1;
	else if pais_nasc =  8000332  then
		pais_nasc73  +1;
	else if pais_nasc =  8000340  then
		pais_nasc74  +1;
	else if pais_nasc =  8000388  then
		pais_nasc75  +1;
	else if pais_nasc =  8000484  then
		pais_nasc76  +1;
	else if pais_nasc =  8000558  then
		pais_nasc77  +1;
	else if pais_nasc =  8000591  then
		pais_nasc78  +1;
	else if pais_nasc =  8000600  then
		pais_nasc79  +1;
	else if pais_nasc =  8000604  then
		pais_nasc80  +1;
	else if pais_nasc =  8000214  then
		pais_nasc81  +1;
	else if pais_nasc =  8000662  then
		pais_nasc82  +1;
	else if pais_nasc =  8000659  then
		pais_nasc83  +1;
	else if pais_nasc =  8000670  then
		pais_nasc84  +1;
	else if pais_nasc =  8000740  then
		pais_nasc85  +1;
	else if pais_nasc =  8000780  then
		pais_nasc86  +1;
	else if pais_nasc =  8000858  then
		pais_nasc87  +1;
	else if pais_nasc =  8000862  then
		pais_nasc88  +1;
	else if pais_nasc =  8000004  then
		pais_nasc89  +1;
	else if pais_nasc =  8000682  then
		pais_nasc90  +1;
	else if pais_nasc =  8000051  then
		pais_nasc91  +1;
	else if pais_nasc =  8000031  then
		pais_nasc92  +1;
	else if pais_nasc =  8000048  then
		pais_nasc93  +1;
	else if pais_nasc =  8000050  then
		pais_nasc94  +1;
	else if pais_nasc =  8000096  then
		pais_nasc95  +1;
	else if pais_nasc =  8000064  then
		pais_nasc96  +1;
	else if pais_nasc =  8000116  then
		pais_nasc97  +1;
	else if pais_nasc =  8000398  then
		pais_nasc98  +1;
	else if pais_nasc =  8000634  then
		pais_nasc99  +1;
	else if pais_nasc =  8000156  then
		pais_nasc100  +1;
	else if pais_nasc =  8000196  then
		pais_nasc101  +1;
	else if pais_nasc =  8000702  then
		pais_nasc102  +1;
	else if pais_nasc =  8000784  then
		pais_nasc103  +1;
	else if pais_nasc =  8000608  then
		pais_nasc104  +1;
	else if pais_nasc =  8000268  then
		pais_nasc105  +1;
	else if pais_nasc =  8000887  then
		pais_nasc106  +1;
	else if pais_nasc =  8000356  then
		pais_nasc107  +1;
	else if pais_nasc =  8000360  then
		pais_nasc108  +1;
	else if pais_nasc =  8000364  then
		pais_nasc109  +1;
	else if pais_nasc =  8000368  then
		pais_nasc110  +1;
	else if pais_nasc =  8000376  then
		pais_nasc111  +1;
	else if pais_nasc =  8000392  then
		pais_nasc112  +1;
	else if pais_nasc =  8000400  then
		pais_nasc113  +1;
	else if pais_nasc =  8000414  then
		pais_nasc114  +1;
	else if pais_nasc =  8000422  then
		pais_nasc115  +1;
	else if pais_nasc =  8000458  then
		pais_nasc116  +1;
	else if pais_nasc =  8000462  then
		pais_nasc117  +1;
	else if pais_nasc =  8000104  then
		pais_nasc118  +1;
	else if pais_nasc =  8000496  then
		pais_nasc119  +1;
	else if pais_nasc =  8000524  then
		pais_nasc120  +1;
	else if pais_nasc =  8000512  then
		pais_nasc121  +1;
	else if pais_nasc =  8000586  then
		pais_nasc122  +1;
	else if pais_nasc =  8000417  then
		pais_nasc123  +1;
	else if pais_nasc =  8000410  then
		pais_nasc124  +1;
	else if pais_nasc =  8000418  then
		pais_nasc125  +1;
	else if pais_nasc =  8000408  then
		pais_nasc126  +1;
	else if pais_nasc =  8000760  then
		pais_nasc127  +1;
	else if pais_nasc =  8000144  then
		pais_nasc128  +1;
	else if pais_nasc =  8000762  then
		pais_nasc129  +1;
	else if pais_nasc =  8000764  then
		pais_nasc130  +1;
	else if pais_nasc =  8000626  then
		pais_nasc131  +1;
	else if pais_nasc =  8000795  then
		pais_nasc132  +1;
	else if pais_nasc =  8000792  then
		pais_nasc133  +1;
	else if pais_nasc =  8000860  then
		pais_nasc134  +1;
	else if pais_nasc =  8000704  then
		pais_nasc135  +1;
	else if pais_nasc =  8000008  then
		pais_nasc136  +1;
	else if pais_nasc =  8000276  then
		pais_nasc137  +1;
	else if pais_nasc =  8000020  then
		pais_nasc138  +1;
	else if pais_nasc =  8000040  then
		pais_nasc139  +1;
	else if pais_nasc =  8000112  then
		pais_nasc140  +1;
	else if pais_nasc =  8000056  then
		pais_nasc141  +1;
	else if pais_nasc =  8000070  then
		pais_nasc142  +1;
	else if pais_nasc =  8000100  then
		pais_nasc143  +1;
	else if pais_nasc =  8000191  then
		pais_nasc144  +1;
	else if pais_nasc =  8000208  then
		pais_nasc145  +1;
	else if pais_nasc =  8000826  then
		pais_nasc146  +1;
	else if pais_nasc =  8000703  then
		pais_nasc147  +1;
	else if pais_nasc =  8000705  then
		pais_nasc148  +1;
	else if pais_nasc =  8000724  then
		pais_nasc149  +1;
	else if pais_nasc =  8000233  then
		pais_nasc150  +1;
	else if pais_nasc =  8000246  then
		pais_nasc151  +1;
	else if pais_nasc =  8000250  then
		pais_nasc152  +1;
	else if pais_nasc =  8000300  then
		pais_nasc153  +1;
	else if pais_nasc =  8000528  then
		pais_nasc154  +1;
	else if pais_nasc =  8000348  then
		pais_nasc155  +1;
	else if pais_nasc =  8000826  then
		pais_nasc156  +1;
	else if pais_nasc =  8000372  then
		pais_nasc157  +1;
	else if pais_nasc =  8000826  then
		pais_nasc158  +1;
	else if pais_nasc =  8000352  then
		pais_nasc159  +1;
	else if pais_nasc =  8000380  then
		pais_nasc160  +1;
	else if pais_nasc =  8000428  then
		pais_nasc161  +1;
	else if pais_nasc =  8000438  then
		pais_nasc162  +1;
	else if pais_nasc =  8000440  then
		pais_nasc163  +1;
	else if pais_nasc =  8000442  then
		pais_nasc164  +1;
	else if pais_nasc =  8000807  then
		pais_nasc165  +1;
	else if pais_nasc =  8000470  then
		pais_nasc166  +1;
	else if pais_nasc =  8000492  then
		pais_nasc167  +1;
	else if pais_nasc =  8000499  then
		pais_nasc168  +1;
	else if pais_nasc =  8000578  then
		pais_nasc169  +1;
	else if pais_nasc =  8000826  then
		pais_nasc170  +1;
	else if pais_nasc =  8000616  then
		pais_nasc171  +1;
	else if pais_nasc =  8000620  then
		pais_nasc172  +1;
	else if pais_nasc =  8000826  then
		pais_nasc173  +1;
	else if pais_nasc =  8000498  then
		pais_nasc174  +1;
	else if pais_nasc =  8000203  then
		pais_nasc175  +1;
	else if pais_nasc =  8000642  then
		pais_nasc176  +1;
	else if pais_nasc =  8000643  then
		pais_nasc177  +1;
	else if pais_nasc =  8000674  then
		pais_nasc178  +1;
	else if pais_nasc =  8000688  then
		pais_nasc179  +1;
	else if pais_nasc =  8000752  then
		pais_nasc180  +1;
	else if pais_nasc =  8000756  then
		pais_nasc181  +1;
	else if pais_nasc =  8000804  then
		pais_nasc182  +1;
	else if pais_nasc =  8000336  then
		pais_nasc183  +1;
	else if pais_nasc =  8000036  then
		pais_nasc184  +1;
	else if pais_nasc =  8000583  then
		pais_nasc185  +1;
	else if pais_nasc =  8000242  then
		pais_nasc186  +1;
	else if pais_nasc =  8000584  then
		pais_nasc187  +1;
	else if pais_nasc =  8000090  then
		pais_nasc188  +1;
	else if pais_nasc =  8000296  then
		pais_nasc189  +1;
	else if pais_nasc =  8000520  then
		pais_nasc190  +1;
	else if pais_nasc =  8000554  then
		pais_nasc191  +1;
	else if pais_nasc =  8000585  then
		pais_nasc192  +1;
	else if pais_nasc =  8000598  then
		pais_nasc193  +1;
	else if pais_nasc =  8000882  then
		pais_nasc194  +1;
	else if pais_nasc =  8000776  then
		pais_nasc195  +1;
	else if pais_nasc =  8000798  then
		pais_nasc196  +1;
	else if pais_nasc =  8000548  then
		pais_nasc197  +1;
	else if pais_nasc =  8000998  then
		pais_nasc198  +1;
	else if pais_nasc =  8000999  then
		pais_nasc199  +1;
    else if pais_nasc =.  then
		pais_nasc2000  +1;

	if last.UF or last.cat_mun or last.apond or last.cat_micro or last.cat_meso or last.macro or last.rm or last.controle then
		output;

	/* instrucao */
data outCD.dom_instrucao;
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
run;
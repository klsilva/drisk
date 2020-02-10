# Define diretório
setwd()

library(haven)
library(xlsx)

# UF

uf_unicidade <- haven::read_sas("uf_unicidade_unicos.sas7bdat")

UFS <- unique(uf_unicidade$UF)

regiao <- unique(uf_unicidade$macro)

UF_UF_lista <- list()

for (i in 1:length(UFS)){
  aux <- subset(uf_unicidade,uf_unicidade$UF==UFS[[i]])
  UF_UF_lista[[length(UF_UF_lista)+1]] <- aux
}

names(UF_UF_lista) <- UFS

tamanho_UF_UF <- c()

for (i in 1:length(UF_UF_lista)){
  aux <- nrow(UF_UF_lista[[i]]) 
  tamanho_UF_UF[[length(tamanho_UF_UF)+1]] <- aux
}

tamanho_UF_UF_df <- data.frame(UF=UFS,Unicidade=tamanho_UF_UF)

write.xlsx(tamanho_UF_UF_df,file="tamanho_UF_UF_df.xlsx")

regiao_UF_lista <- list()

for (i in 1:length(regiao)){
  aux <- subset(uf_unicidade,uf_unicidade$macro==regiao[[i]])
  regiao_UF_lista[[length(regiao_UF_lista)+1]] <- aux
}

names(regiao_UF_lista) <- regiao


tamanho_regiao_UF <- c()

for (i in 1:length(regiao_UF_lista)){
  aux <- nrow(regiao_UF_lista[[i]]) 
  tamanho_regiao_UF[[length(tamanho_regiao_UF)+1]] <- aux
}

tamanho_regiao_UF_df <- data.frame(Macro=regiao,Unicidade=tamanho_regiao_UF)

write.xlsx(tamanho_regiao_UF_df,file="tamanho_regiao_UF_df.xlsx")


# Cod_Mun

cod_mun_unicidade <- haven::read_sas("cod_mun_unicidade_unicos.sas7bdat")

cod_mun_UF_lista <- list()

for (i in 1:length(UFS)){
  aux <- subset(cod_mun_unicidade,cod_mun_unicidade$UF==UFS[[i]])
  cod_mun_UF_lista[[length(cod_mun_UF_lista)+1]] <- aux
}

names(cod_mun_UF_lista) <- UFS

tamanho_cod_mun_UF <- c()

for (i in 1:length(cod_mun_UF_lista)){
  aux <- nrow(cod_mun_UF_lista[[i]]) 
  tamanho_cod_mun_UF[[length(tamanho_cod_mun_UF)+1]] <- aux
}

tamanho_cod_mun_UF_df <- data.frame(UF=UFS,Unicidade=tamanho_cod_mun_UF)

write.xlsx(tamanho_cod_mun_UF_df,file="tamanho_cod_mun_UF_df.xlsx")

regiao_cod_mun_lista <- list()

for (i in 1:length(regiao)){
  aux <- subset(cod_mun_unicidade,cod_mun_unicidade$macro==regiao[[i]])
  regiao_cod_mun_lista[[length(regiao_cod_mun_lista)+1]] <- aux
}

names(regiao_cod_mun_lista) <- regiao


tamanho_regiao_cod_mun <- c()

for (i in 1:length(regiao_cod_mun_lista)){
  aux <- nrow(regiao_cod_mun_lista[[i]]) 
  tamanho_regiao_cod_mun[[length(tamanho_regiao_cod_mun)+1]] <- aux
}

tamanho_regiao_cod_mun_df <- data.frame(Macro=regiao,Unicidade=tamanho_regiao_cod_mun)

write.xlsx(tamanho_regiao_cod_mun_df,file="tamanho_regiao_cod_mun_df.xlsx")



# Apond

apond_unicidade <- haven::read_sas("apond_unicidade_unicos.sas7bdat")

apond_unicidade_UF_lista <- list()

for (i in 1:length(UFS)){
  aux <- subset(apond_unicidade,apond_unicidade$UF==UFS[[i]])
  apond_unicidade_UF_lista[[length(apond_unicidade_UF_lista)+1]] <- aux
}

names(apond_unicidade_UF_lista) <- UFS

tamanho_apond_UF <- c()

for (i in 1:length(apond_unicidade_UF_lista)){
  aux <- nrow(apond_unicidade_UF_lista[[i]]) 
  tamanho_apond_UF[[length(tamanho_apond_UF)+1]] <- aux
}

tamanho_apond_UF_df <- data.frame(UF=UFS,Unicidade=tamanho_apond_UF)

write.xlsx(tamanho_apond_UF_df,file="tamanho_apond_UF_df.xlsx")

regiao_apond_lista <- list()

for (i in 1:length(regiao)){
  aux <- subset(apond_unicidade,apond_unicidade$macro==regiao[[i]])
  regiao_apond_lista[[length(regiao_apond_lista)+1]] <- aux
}

names(regiao_apond_lista) <- regiao


tamanho_regiao_apond <- c()

for (i in 1:length(regiao_apond_lista)){
  aux <- nrow(regiao_apond_lista[[i]]) 
  tamanho_regiao_apond[[length(tamanho_regiao_apond)+1]] <- aux
}

tamanho_regiao_apond_df <- data.frame(Macro=regiao,Unicidade=tamanho_regiao_apond)

write.xlsx(tamanho_regiao_apond_df,file="tamanho_regiao_apond_df.xlsx")


# Meso

meso_unicidade <- haven::read_sas("meso_unicidade_unicos.sas7bdat")

meso_unicidade_UF_lista <- list()

for (i in 1:length(UFS)){
  aux <- subset(meso_unicidade,meso_unicidade$UF==UFS[[i]])
  meso_unicidade_UF_lista[[length(meso_unicidade_UF_lista)+1]] <- aux
}

names(meso_unicidade_UF_lista) <- UFS

tamanho_meso_UF <- c()

for (i in 1:length(meso_unicidade_UF_lista)){
  aux <- nrow(meso_unicidade_UF_lista[[i]]) 
  tamanho_meso_UF[[length(tamanho_meso_UF)+1]] <- aux
}

tamanho_meso_UF_df <- data.frame(UF=UFS,Unicidade=tamanho_meso_UF)

write.xlsx(tamanho_meso_UF_df,file="tamanho_meso_UF_df.xlsx")

regiao_meso_lista <- list()

for (i in 1:length(regiao)){
  aux <- subset(meso_unicidade,meso_unicidade$macro==regiao[[i]])
  regiao_meso_lista[[length(regiao_meso_lista)+1]] <- aux
}

names(regiao_meso_lista) <- regiao


tamanho_regiao_meso <- c()

for (i in 1:length(regiao_meso_lista)){
  aux <- nrow(regiao_meso_lista[[i]]) 
  tamanho_regiao_meso[[length(tamanho_regiao_meso)+1]] <- aux
}

tamanho_regiao_meso_df <- data.frame(Macro=regiao,Unicidade=tamanho_regiao_meso)

write.xlsx(tamanho_regiao_meso_df,file="tamanho_regiao_meso_df.xlsx")


# Micro

micro_unicidade <- haven::read_sas("micro_unicidade_unicos.sas7bdat")

micro_unicidade_UF_lista <- list()

for (i in 1:length(UFS)){
  aux <- subset(micro_unicidade,micro_unicidade$UF==UFS[[i]])
  micro_unicidade_UF_lista[[length(micro_unicidade_UF_lista)+1]] <- aux
}

names(micro_unicidade_UF_lista) <- UFS

tamanho_micro_UF <- c()

for (i in 1:length(micro_unicidade_UF_lista)){
  aux <- nrow(micro_unicidade_UF_lista[[i]]) 
  tamanho_micro_UF[[length(tamanho_micro_UF)+1]] <- aux
}

tamanho_micro_UF_df <- data.frame(UF=UFS,Unicidade=tamanho_micro_UF)

write.xlsx(tamanho_micro_UF_df,file="tamanho_micro_UF_df.xlsx")

regiao_micro_lista <- list()

for (i in 1:length(regiao)){
  aux <- subset(micro_unicidade,micro_unicidade$macro==regiao[[i]])
  regiao_micro_lista[[length(regiao_micro_lista)+1]] <- aux
}

names(regiao_micro_lista) <- regiao


tamanho_regiao_micro <- c()

for (i in 1:length(regiao_micro_lista)){
  aux <- nrow(regiao_micro_lista[[i]]) 
  tamanho_regiao_micro[[length(tamanho_regiao_micro)+1]] <- aux
}

tamanho_regiao_micro_df <- data.frame(Macro=regiao,Unicidade=tamanho_regiao_micro)

write.xlsx(tamanho_regiao_micro_df,file="tamanho_regiao_micro_df.xlsx")

# RM

rm_unicidade <- haven::read_sas("rm_unicidade_unicos.sas7bdat")

rm_unicidade <- subset(rm_unicidade,rm!="00")

rm_unicidade_UF_lista <- list()

for (i in 1:length(UFS)){
  aux <- subset(rm_unicidade,rm_unicidade$UF==UFS[[i]])
  rm_unicidade_UF_lista[[length(rm_unicidade_UF_lista)+1]] <- aux
}

names(rm_unicidade_UF_lista) <- UFS

tamanho_rm_UF <- c()

for (i in 1:length(rm_unicidade_UF_lista)){
  aux <- nrow(rm_unicidade_UF_lista[[i]]) 
  tamanho_rm_UF[[length(tamanho_rm_UF)+1]] <- aux
}

tamanho_rm_UF_df <- data.frame(UF=UFS,Unicidade=tamanho_rm_UF)

write.xlsx(tamanho_rm_UF_df,file="tamanho_rm_UF_df.xlsx")

regiao_rm_lista <- list()

for (i in 1:length(regiao)){
  aux <- subset(rm_unicidade,rm_unicidade$macro==regiao[[i]])
  regiao_rm_lista[[length(regiao_rm_lista)+1]] <- aux
}

names(regiao_rm_lista) <- regiao


tamanho_regiao_rm <- c()

for (i in 1:length(regiao_rm_lista)){
  aux <- nrow(regiao_rm_lista[[i]]) 
  tamanho_regiao_rm[[length(tamanho_regiao_rm)+1]] <- aux
}

tamanho_regiao_rm_df <- data.frame(Macro=regiao,Unicidade=tamanho_regiao_rm)

write.xlsx(tamanho_regiao_rm_df,file="tamanho_regiao_rm_df.xlsx")

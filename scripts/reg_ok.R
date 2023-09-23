

veiculo <- rbind(pre_covid_veiculo, pos_covid_veiculo)


sink("veiculo2.txt")

v1<-subset(veiculo, `Até 20 mil` == 1 )



reg_v1 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= v1)

summary(reg_v1)



v2<-subset(veiculo, `20 mil a 50 mil` == 1 )


reg_v2 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= v2)

summary(reg_v2)


v3<-subset(veiculo, `50 mil a 150 mil` == 1 )


reg_v3 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= v3)

summary(reg_v3)


v4<-subset(veiculo, `150 mil a 500 mil` == 1 )


reg_v4 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= v4)

summary(reg_v4)


v5<-subset(veiculo, `Acima de 500 mil` == 1 )


reg_v5 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= v5)

summary(reg_v5)


sink()



writexl::write_xlsx(veiculo, "veiculo-covid.xlsx")  

writexl::write_xlsx(transeunte, "transeunte-covid.xlsx")

writexl::write_xlsx(furto, "furto-covid.xlsx")



v11 <- subset(v1, covid==1)

hist(v11$Registros)
hist(v11$logRegistros)


v12 <- subset(v1, covid==0)

hist(v12$Registros)
hist(v1$logRegistros)


sink("Veiculo_t.txt")

amostra_1 <- subset(v1, covid==1)
amostra_2 <- subset(v1, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)


amostra_1 <- subset(v2, covid==1)
amostra_2 <- subset(v2, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(v3, covid==1)
amostra_2 <- subset(v3, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(v4, covid==1)
amostra_2 <- subset(v4, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(v5, covid==1)
amostra_2 <- subset(v5, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)



amostra_1 <- subset(v1, covid==1)
amostra_2 <- subset(v1, `Até 20 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v1, covid==0)
amostra_2 <- subset(v1, `Até 20 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v2, covid==1)
amostra_2 <- subset(v2, `20 mil a 50 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v2, covid==0)
amostra_2 <- subset(v2, `20 mil a 50 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v3, covid==1)
amostra_2 <- subset(v3, `50 mil a 150 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v3, covid==0)
amostra_2 <- subset(v3, `50 mil a 150 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v4, covid==1)
amostra_2 <- subset(v4, `150 mil a 500 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v4, covid==0)
amostra_2 <- subset(v4, `150 mil a 500 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v5, covid==1)
amostra_2 <- subset(v5, `Acima 500 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(v5, covid==0)
amostra_2 <- subset(v5, `Acima 500 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)

sink()

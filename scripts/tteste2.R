sink("transeunte_t.txt")

amostra_1 <- subset(t1, covid==1)
amostra_2 <- subset(t1, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)


amostra_1 <- subset(t2, covid==1)
amostra_2 <- subset(t2, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(t3, covid==1)
amostra_2 <- subset(t3, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(t4, covid==1)
amostra_2 <- subset(t4, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(t5, covid==1)
amostra_2 <- subset(t5, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)



amostra_1 <- subset(t1, covid==1)
amostra_2 <- subset(t1, `Até 20 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t1, covid==0)
amostra_2 <- subset(t1, `Até 20 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t2, covid==1)
amostra_2 <- subset(t2, `20 mil a 50 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t2, covid==0)
amostra_2 <- subset(t2, `20 mil a 50 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t3, covid==1)
amostra_2 <- subset(t3, `50 mil a 150 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t3, covid==0)
amostra_2 <- subset(t3, `50 mil a 150 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t4, covid==1)
amostra_2 <- subset(t4, `150 mil a 500 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t4, covid==0)
amostra_2 <- subset(t4, `150 mil a 500 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t5, covid==1)
amostra_2 <- subset(t5, `Acima 500 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(t5, covid==0)
amostra_2 <- subset(t5, `Acima 500 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)

sink()


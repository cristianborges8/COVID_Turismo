sink("furto_t.txt")

amostra_1 <- subset(f1, covid==1)
amostra_2 <- subset(f1, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)


amostra_1 <- subset(f2, covid==1)
amostra_2 <- subset(f2, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(f3, covid==1)
amostra_2 <- subset(f3, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(f4, covid==1)
amostra_2 <- subset(f4, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)

amostra_1 <- subset(f5, covid==1)
amostra_2 <- subset(f5, covid==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = TRUE)



amostra_1 <- subset(f1, covid==1)
amostra_2 <- subset(f1, `Até 20 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f1, covid==0)
amostra_2 <- subset(f1, `Até 20 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f2, covid==1)
amostra_2 <- subset(f2, `20 mil a 50 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f2, covid==0)
amostra_2 <- subset(f2, `20 mil a 50 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f3, covid==1)
amostra_2 <- subset(f3, `50 mil a 150 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f3, covid==0)
amostra_2 <- subset(f3, `50 mil a 150 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f4, covid==1)
amostra_2 <- subset(f4, `150 mil a 500 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f4, covid==0)
amostra_2 <- subset(f4, `150 mil a 500 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f5, covid==1)
amostra_2 <- subset(f5, `Acima 500 mil - Cidades Turísticas`== 1 & covid ==1)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)


amostra_1 <- subset(f5, covid==0)
amostra_2 <- subset(f5, `Acima 500 mil - Cidades Turísticas`== 1 & covid ==0)

t.test(amostra_1$Registros, amostra_2$Registros, paired = FALSE)

sink()

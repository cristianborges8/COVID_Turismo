

transeunte <- rbind(pre_covid_transeunte, pos_covid_transeunte)


sink("transeunte2.txt")

t1<-subset(transeunte, `Até 20 mil` == 1 )



reg_t1 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= t1)

summary(reg_t1)



t2<-subset(transeunte, `20 mil a 50 mil` == 1 )


reg_t2 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= t2)

summary(reg_t2)


t3<-subset(transeunte, `50 mil a 150 mil` == 1 )


reg_t3 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= t3)

summary(reg_t3)


t4<-subset(transeunte, `150 mil a 500 mil` == 1 )


reg_t4 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= t4)

summary(reg_t4)


t5<-subset(transeunte, `Acima de 500 mil` == 1 )


reg_t5 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= t5)

summary(reg_t5)


sink()


hist(v1$Registros)
hist(v1$logRegistros)


hist(t1$Registros)
hist(t1$logRegistros)

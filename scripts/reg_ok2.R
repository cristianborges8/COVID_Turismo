

furto <- rbind(pre_covid_furto, pos_covid_furto)


sink("furto2.txt")

f1<-subset(furto, `Até 20 mil` == 1 )



reg_f1 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= f1)

summary(reg_f1)



f2<-subset(furto, `20 mil a 50 mil` == 1 )


reg_f2 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= f2)

summary(reg_f2)


f3<-subset(furto, `50 mil a 150 mil` == 1 )


reg_f3 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= f3)

summary(reg_f3)


f4<-subset(furto, `150 mil a 500 mil` == 1 )


reg_f4 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= f4)

summary(reg_f4)


f5<-subset(furto, `Acima de 500 mil` == 1 )


reg_f5 <- lm(Registros ~ CIDADE + covid + CIDADE*covid, data= f5)

summary(reg_f5)


sink()


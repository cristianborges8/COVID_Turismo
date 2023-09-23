############# transeunte



data1 = ts(transeunte20_1_1[,4], start=c(2018,1), end=c(2018,12), frequency=12)

data3 = ts(transeunte20_1_1[,4], start=c(2019,1), end=c(2020,3), frequency=12)

data2 = ts(transeunte20_1_1[,4], start=c(2020,4), end=c(2021,4), frequency=12)

data = ts(transeunte20_1_1[,4], start=c(2018,1), end=c(2021,4), frequency=12)

require(forecast)
ARIMAfit = auto.arima(data3, approximation=FALSE,trace=FALSE)
summary(ARIMAfit)


library(lubridate)

par(mfrow = c(1,1))
pred = predict(ARIMAfit, n.ahead = 13)
pred
plot(data3,type='l',xlim=c(2018,2021),ylim=c(-4,4),xlab = 'Ano',ylab = 'Ocorrências de Crimes')
lines(data2, col='red')
lines(data1, col='green')
lines(pred$pred,col='blue')
lines(pred$pred+2*pred$se,col='orange')
lines(pred$pred-2*pred$se,col='orange')
abline(v = 2019, col = "pink")

legend("bottomleft", legend=c("2020-2021 observado", "2020-2021 projetado", "2019-2020", "2018-2019", "IC Predito +/- 2*SE", "2019 - covid-19"),
       col=c("red", "blue", "black", "green", "orange", "pink"), lty=1:1, bty = "n", cex=0.80, ncol = 2)

cor.test(data2, pred$pred,
         method = "pearson")
pred$pred

cor.test(data2 , pred$pred)




###  cor 
NA


############# transeunte



data1 = ts(transeunte20a50_1_1[,4], start=c(2018,1), end=c(2018,12), frequency=12)

data3 = ts(transeunte20a50_1_1[,4], start=c(2019,1), end=c(2020,3), frequency=12)

data2 = ts(transeunte20a50_1_1[,4], start=c(2020,4), end=c(2021,4), frequency=12)

data = ts(transeunte20a50_1_1[,4], start=c(2018,1), end=c(2021,4), frequency=12)

require(forecast)
ARIMAfit2 = auto.arima(data3, approximation=FALSE,trace=FALSE)
summary(ARIMAfit2)


library(lubridate)

par(mfrow = c(1,1))
pred = predict(ARIMAfit2, n.ahead = 13)
pred
plot(data3,type='l',xlim=c(2018,2021),ylim=c(-4,5),xlab = 'Ano',ylab = 'Ocorrências de Crimes')
lines(data2, col='red')
lines(data1, col='green')
lines(pred$pred,col='blue')
lines(pred$pred+2*pred$se,col='orange')
lines(pred$pred-2*pred$se,col='orange')
abline(v = 2019, col = "pink")

legend("bottomleft", legend=c("2020-2021 observado", "2020-2021 projetado", "2019-2020", "2018-2019", "IC Predito +/- 2*SE", "2019 - covid-19"),
       col=c("red", "blue", "black", "green", "orange", "pink"), lty=1:1, bty = "n", cex=0.80, ncol = 2)

cor.test(data2, pred$pred,
         method = "pearson")
pred$pred

cor.test(data2 , pred$pred)




###  cor 
-0.1450087 



############# transeunte



data1 = ts(transeunte50a150_1_1[,4], start=c(2018,1), end=c(2018,12), frequency=12)

data3 = ts(transeunte50a150_1_1[,4], start=c(2019,1), end=c(2020,3), frequency=12)

data2 = ts(transeunte50a150_1_1[,4], start=c(2020,4), end=c(2021,4), frequency=12)

data = ts(transeunte50a150_1_1[,4], start=c(2018,1), end=c(2021,4), frequency=12)

require(forecast)
ARIMAfit = auto.arima(data3, approximation=FALSE,trace=FALSE)
summary(ARIMAfit)


library(lubridate)

par(mfrow = c(1,1))
pred = predict(ARIMAfit, n.ahead = 13)
pred
plot(data3,type='l',xlim=c(2018,2021),ylim=c(-4,6),xlab = 'Ano',ylab = 'Ocorrências de Crimes')
lines(data2, col='red')
lines(data1, col='green')
lines(pred$pred,col='blue')
lines(pred$pred+2*pred$se,col='orange')
lines(pred$pred-2*pred$se,col='orange')
abline(v = 2019, col = "pink")

legend("bottomleft", legend=c("2020-2021 observado", "2020-2021 projetado", "2019-2020", "2018-2019", "IC Predito +/- 2*SE", "2019 - covid-19"),
       col=c("red", "blue", "black", "green", "orange", "pink"), lty=1:1, bty = "n", cex=0.80, ncol = 2)

cor.test(data2, pred$pred,
         method = "pearson")
pred$pred

cor.test(data2 , pred$pred)




###  cor 
NA


############# transeunte



data1 = ts(transeunte150a500_1_1[,4], start=c(2018,1), end=c(2018,12), frequency=12)

data3 = ts(transeunte150a500_1_1[,4], start=c(2019,1), end=c(2020,3), frequency=12)

data2 = ts(transeunte150a500_1_1[,4], start=c(2020,4), end=c(2021,4), frequency=12)

data = ts(transeunte150a500_1_1[,4], start=c(2018,1), end=c(2021,4), frequency=12)

require(forecast)
ARIMAfit = auto.arima(data3, approximation=FALSE,trace=FALSE)
summary(ARIMAfit)


library(lubridate)

par(mfrow = c(1,1))
pred = predict(ARIMAfit, n.ahead = 13)
pred
plot(data3,type='l',xlim=c(2018,2021),ylim=c(-4,6),xlab = 'Ano',ylab = 'Ocorrências de Crimes')
lines(data2, col='red')
lines(data1, col='green')
lines(pred$pred,col='blue')
lines(pred$pred+2*pred$se,col='orange')
lines(pred$pred-2*pred$se,col='orange')
abline(v = 2019, col = "pink")

legend("bottomleft", legend=c("2020-2021 observado", "2020-2021 projetado", "2019-2020", "2018-2019", "IC Predito +/- 2*SE", "2019 - covid-19"),
       col=c("red", "blue", "black", "green", "orange", "pink"), lty=1:1, bty = "n", cex=0.80, ncol = 2)

cor.test(data2, pred$pred,
         method = "pearson")
pred$pred

cor.test(data2 , pred$pred)




###  cor 
NA




############# transeunte



data1 = ts(transeunte500_1_1[,4], start=c(2018,1), end=c(2018,12), frequency=12)

data3 = ts(transeunte500_1_1[,4], start=c(2019,1), end=c(2020,3), frequency=12)

data2 = ts(transeunte500_1_1[,4], start=c(2020,4), end=c(2021,4), frequency=12)

data = ts(transeunte500_1_1[,4], start=c(2018,1), end=c(2021,4), frequency=12)

require(forecast)
ARIMAfit = auto.arima(data3, approximation=FALSE,trace=FALSE)
summary(ARIMAfit)


library(lubridate)

par(mfrow = c(1,1))
pred = predict(ARIMAfit, n.ahead = 13)
pred
plot(data3,type='l',xlim=c(2018,2021),ylim=c(-4,8),xlab = 'Ano',ylab = 'Ocorrências de Crimes')
lines(data2, col='red')
lines(data1, col='green')
lines(pred$pred,col='blue')
lines(pred$pred+2*pred$se,col='orange')
lines(pred$pred-2*pred$se,col='orange')
abline(v = 2019, col = "pink")

legend("bottomleft", legend=c("2020-2021 observado", "2020-2021 projetado", "2019-2020", "2018-2019", "IC Predito +/- 2*SE", "2019 - covid-19"),
       col=c("red", "blue", "black", "green", "orange", "pink"), lty=1:1, bty = "n", cex=0.80, ncol = 2)

cor.test(data2, pred$pred,
         method = "pearson")
pred$pred

cor.test(data2 , pred$pred)




###  cor 
NA



### Time Series Analysis Using ARIMA Model In R | DataScience+ (datascienceplus.com)
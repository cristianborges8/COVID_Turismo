# COVID_Turismo

Primeiramente, foram realizados 2 tipos de Teste t para médias: um Pareado e um Independente. O Teste t de Student possuem a finalidade de identificar se a média da variável entre dois grupos é diferente. Possui como hipótese nula a diferença entre os grupos é zero, então p-valores oriundos dos testes quantificam a probabilidade de você obter resultados tão extremos caso não haja diferença entre os grupos e possui o pressuposto de independência dos dados. Portanto, caso haja alguma fonte de dependência dos dados os resultados dos testes são inválidos.

O primeiro teste t foi pareado para testar a hipótese nula de que as médias de crimes entre os períodos pré e pós pandemia são significativamente diferentes dentre os municípios de Minas Gerais, segundo o tamanho de população. O período pré pandemia da covid-19 foi considerado entre jan/2018 a mar/2020. O período pós pandemia, mar/2020 a abr/2021. Os crimes analisados foram da base de dados pública da SEUSP/MG, para Roubo e Furto de Veículos, Furto e Furto a Transeunte. Utilizou-se o Software estatístico R, versão 4.2.1 para as análises.

Para cada tamanho de cidade, foi realizado um teste t pareado. Os tamanhos de cidades considerados nas análises foram: Até 20 mil habitantes, de 20 mil a 50 mil habitantes, de 50 mil a 150 mil habitantes, de 150 mil a 500 mil habitantes e Acima de 500 mil habitantes.

Já para o segundo teste t, o independente, testou-se a hipótese de que certas cidades turísticas, comparadas com as demais cidades de mesmo tamanho populacional, nos períodos pré e pós pandemia, são significativamente diferentes. Para isso, testou-se uma lista de cidades turísticas (Belo Horizonte, Camanducaia, Cambuí, Caxambu, Diamantina, Extrema, Gonçalves, Governador Valadares, Itamonte, Juiz de Fora, Mariana, Montes Claros, Ouro Preto, Poços de Caldas, Salinas, Santana do Riacho, São João del Rei, São Lourenço, Sete Lagoas, Tiradentes, Uberlândia).

Em um segundo momento, aplicou-se a metodologia Auto Regressive Integrated Moving Average (ARIMA), para checar se uma determinada série temporal, baseada em seus próprios valores passados, ou seja, seus próprios atrasos e os erros de previsão defasados, pode ser usada para prever valores futuros.

Os modelos ARIMA são um tipo específico de técnica de previsão de séries temporais que capitalizam vários parâmetros-séries-tempo-chave. A tendência da série e sazonalidade, suas correlações automáticas defasadas e suas auto-correlações auto-parciais defasadas, as correlações entre erros residuais, (PAYNE; MORGAN; ALEX, 2021). O propósito de cada uma das características do modelo ARIMA é fazer com que ele se ajuste aos dados da melhor forma possível.

A parte auto-regressiva (AR) do modelo ARIMA indica que a variável evoluinte de interesse é regressada em seus próprios valores defasados, isto é, anteriores. A parte integrada (I) indica que os valores de dados foram substituídos com a diferença entre seus valores e os valores anteriores e este processo diferenciador pode ter sido realizado mais de uma vez. Já a parte de média móvel (MA) indica que o erro de regressão é, na verdade, uma combinação linear dos termos de erro, cujos valores ocorreram contemporaneamente e em vários momentos no passado. 

Para averiguar se houve quebra estrutural entre os períodos pré e pós pandemia, após a estimação dos parâmetros da regressão pelo modelo ARIMA, mais especificadamente no mês de março de 2020, realizou-se o Teste de Chow. O artigo de Gregory Chow (1960) é conhecido como o primeiro estudo sobre quebra estrutural. O objetivo do teste de quebra estrutural (teste de Chow) é verificar se existe alguma mudança abrupta de comportamento nas séries temporais num dado instante de tempo. 

É possível verificar a igualdade das equações, ou seja, verificar se os coeficientes ajustados são iguais, possibilitando o uso de uma única equação, por meio do Teste de Chow (Gujarati e Porter, 2008). Ao aplicar o teste de Chow a um modelo de regressão envolvendo o uso de séries temporais, pode ocorrer mudança estrutural na relação entre o regressando e o regressor. O teste de quebra estrutural (teste de Chow) é avaliado estatisticamente através da comparação dos valores calculados e crítico da estatística de F. Portanto, se o valor calculado da estatística de teste for maior que o valor crítico de F, ao nível de significância escolhido, deve-se rejeitar a hipótese de estabilidade estrutural, ou seja, deve-se rejeitar a hipótese de que as regressões das subamostras são iguais. (GUJARATI, 2006, p. 257).

Para fazer operacionalizar o modelo ARIMA, usamos o pacote forecast de previsão de uma série temporal para uso com o programa estatístico R. 

##Referências
PAYNE, Jason L; MORGAN, Anthony; ALEX, R. Exploring regional variability in the short-term impact of COVID-19 on property crime in. v. 7, 2021.
O’Hara-Wild, M., Hyndman, R. J., & Wang, E. (2020). Fable: forecasting models for tidy time series. http://fable.tidyverts.org/
GUJARATI, D. N.; PORTER, D.C. Basic econometrics. 5.ed. McGraw-Hill Education. 2008. 944p.


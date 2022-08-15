#Visualização e análise exploratório dos dados do grupo controle - projeto mestrado
#Autor: Amanda Salmeron, Data: 15/08/2022

#carregando pacotes
if(!require(dplyr))
  install.packages("dplyr")
library(dplyr)

if(!require(psych))
  install.packages("psych")
library(psych)

#importação da planilha
planilha1<-read.csv("Control_CBA.csv",header = TRUE, sep = ';')

#visualização da planilha
head (planilha1)

glimpse(planilha1)

#análise da amplitude
range(planilha1$IFN.g)
range(planilha1$IL.2)
range(planilha1$IL.4)
range(planilha1$IL.5)
range(planilha1$IL.6)
range(planilha1$IL.10)
range(planilha1$TNF.a)

#avaliação da quantidade de categorias adequadas
nclass.Sturges(planilha1$IFN.g)
nclass.Sturges(planilha1$IL.2)
nclass.Sturges(planilha1$IL.4)
nclass.Sturges(planilha1$IL.5)
nclass.Sturges(planilha1$IL.6)
nclass.Sturges(planilha1$IL.10)
nclass.Sturges(planilha1$TNF.a)

#criação de uma tabela com as faixas
table(cut(planilha1$IFN.g, seq(0, 1000, l = 7)))
table(cut(planilha1$IL.2, seq(0, 5000, l = 7)))
table(cut(planilha1$IL.4, seq(0, 50, l = 7)))
table(cut(planilha1$IL.5, seq(0, 1500, l = 7)))
table(cut(planilha1$IL.6, seq(350, 10000, l = 7)))
table(cut(planilha1$IL.10, seq(60, 2100, l = 7)))
table(cut(planilha1$TNF.a, seq(0, 7000, l = 7)))

#média, desvio, erro, mediana
describe(planilha1$IFN.g)
describe(planilha1$IL.2)
describe(planilha1$IL.4)
describe(planilha1$IL.5)
describe(planilha1$IL.6)
describe(planilha1$IL.10)
describe(planilha1$TNF.a)

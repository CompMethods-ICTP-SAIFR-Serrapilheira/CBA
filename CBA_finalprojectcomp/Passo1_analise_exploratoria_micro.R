#Visualização e análise exploratório dos dados do grupo microcefalia - projeto mestrado
#Autor: Amanda Salmeron, Data: 15/08/2022

#carregando pacotes
if(!require(dplyr))
  install.packages("dplyr")
library(dplyr)

if(!require(psych))
  install.packages("psych")
library(psych)

#importação da planilha
planilha1<-read.csv("Micro_CBA.csv",header = TRUE, sep = ';')

#visualização da planilha
head (planilha2)

glimpse(planilha2)

#análise da amplitude
range(planilha2$IFN.g)
range(planilha2$IL.2)
range(planilha2$IL.4)
range(planilha2$IL.5)
range(planilha2$IL.6)
range(planilha2$IL.10)
range(planilha2$TNF.a)

#avaliação da quantidade de categorias adequadas
nclass.Sturges(planilha2$IFN.g)
nclass.Sturges(planilha2$IL.2)
nclass.Sturges(planilha2$IL.4)
nclass.Sturges(planilha2$IL.5)
nclass.Sturges(planilha2$IL.6)
nclass.Sturges(planilha2$IL.10)
nclass.Sturges(planilha2$TNF.a)

#criação de uma tabela com as faixas
table(cut(planilha2$IFN.g, seq(0, 700, l = 7)))
table(cut(planilha2$IL.2, seq(0, 1000, l = 7)))
table(cut(planilha2$IL.4, seq(0, 100, l = 7)))
table(cut(planilha2$IL.5, seq(0, 800, l = 7)))
table(cut(planilha2$IL.6, seq(0, 8000, l = 7)))
table(cut(planilha2$IL.10, seq(0, 1000, l = 7)))
table(cut(planilha2$TNF.a, seq(0, 100, l = 7)))

#média, desvio, erro, mediana
describe(planilha2$IFN.g)
describe(planilha2$IL.2)
describe(planilha2$IL.4)
describe(planilha2$IL.5)
describe(planilha2$IL.6)
describe(planilha2$IL.10)
describe(planilha2$TNF.a)

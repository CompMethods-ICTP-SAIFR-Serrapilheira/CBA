#Plots - comparação entre grupo microcefalia e grupo controle - projeto mestrado
#Autor: Amanda Salmeron, Data: 15/08/2022

# Carregamento dos pacotes
if(!require(pacman)){install.packages("pacman")}
pacman::p_load(ggplot2, dplyr)

# Carregamento do banco de dados ######################################################
dados<-read.csv("Completo_CBA.csv",header = TRUE, sep = ';',stringsAsFactors = T)
View(dados)
glimpse(dados)

#Plots da média com intervalo de confiança e desvio padrão por citocina###################
#IFN-g
A<-ggplot(data = dados, aes(x = GRUPO, y = IFN.g)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "IFN-g (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-2
B<-ggplot(data = dados, aes(x = GRUPO, y = IL.2)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "IL-2 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-4
C<-ggplot(data = dados, aes(x = GRUPO, y = IL.4)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "IL-4 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-5
D<-ggplot(data = dados, aes(x = GRUPO, y = IL.5)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "IL-5 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-6
E<-ggplot(data = dados, aes(x = GRUPO, y = IL.6)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "IL-6 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-10
G<-ggplot(data = dados, aes(x = GRUPO, y = IL.10)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "IL-10 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#TNF-a
H<-ggplot(data = dados, aes(x = GRUPO, y = TNF.a)) +
  geom_point(stat = "summary", fun = "mean")+
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)+
  labs(x = "Grupos", y = "TNF-a (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()



#############Salvar os gráficos##################
#IFN-g
ggsave(plot = A, "Média de IFN-g por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-2
ggsave(plot = B, "Média de IL-2 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-4
ggsave(plot = C, "Média de IL-4 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-5
ggsave(plot = D, "Média de IL-5 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-6
ggsave(plot = E, "Média de IL-6 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-10
ggsave(plot = G, "Média de IL-10 por grupo.png", height = 4.5, width = 6, dpi = 600)

#TNF-a
ggsave(plot = H, "Média de TNF-a por grupo.png", height = 4.5, width = 6, dpi = 600)

#Plots - comparação entre grupo microcefalia e grupo controle - projeto mestrado
#Autor: Amanda Salmeron, Data: 15/08/2022

# Carregamento dos pacotes
if(!require(pacman)){install.packages("pacman")}
pacman::p_load(ggplot2, dplyr)
install.packages("magrittr")
install.packages("patchwork")
install.packages("ggsignif")
library("ggsignif")
library("patchwork")
library("magrittr")

# Carregamento do banco de dados ######################################################
dados<-read.csv("Completo_CBA.csv",header = TRUE, sep = ';',stringsAsFactors = T)
View(dados)
glimpse(dados)

# Boxplots com dotplot e análise estatística ##############################
#IFN-g
A<-ggplot(data = dados, aes(x = GRUPO, y = IFN.g))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "IFN-g (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-2
B<-ggplot(data = dados, aes(x = GRUPO, y = IL.2))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "IL-2 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-4
C<-ggplot(data = dados, aes(x = GRUPO, y = IL.4))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "IL-4 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-5
D<-ggplot(data = dados, aes(x = GRUPO, y = IL.5))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "IL-5 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-6
E<-ggplot(data = dados, aes(x = GRUPO, y = IL.6))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "IL-6 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#IL-10
G<-ggplot(data = dados, aes(x = GRUPO, y = IL.10))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "IL-10 (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()

#TNF-a
H<-ggplot(data = dados, aes(x = GRUPO, y = TNF.a))+
  geom_errorbar(stat = "boxplot", width = 0.2)+
  geom_boxplot(width = 0.6, fill = "grey90", outlier.color = NA)+
  geom_signif(comparisons = list(c("MICRO", "CONTROL")),
              test = "wilcox.test",
              tip_length = 0.015,
              textsize = 3.5,
              map_signif_level = TRUE)+
  geom_dotplot(binaxis = "y", stackdir = "center", alpha = 0.2)+
  labs(x = "Groups", y = "TNF-a (fg/mL)")+
  scale_y_continuous(n.breaks = 10, expand = expansion(mult = c(0.05, 0.05)))+
  scale_x_discrete(labels = c("Control", "Microcephaly"))+
  theme_classic()


#############Salvar os gráficos##################
#IFN-g
ggsave(plot = A, "Boxplot de IFN-g por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-2
ggsave(plot = B, "Boxplot de IL-2 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-4
ggsave(plot = C, "Boxplot de IL-4 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-5
ggsave(plot = D, "Boxplot de IL-5 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-6
ggsave(plot = E, "Boxplot de IL-6 por grupo.png", height = 4.5, width = 6, dpi = 600)

#IL-10
ggsave(plot = G, "Boxplot de IL-10 por grupo.png", height = 4.5, width = 6, dpi = 600)

#TNF-a
ggsave(plot = H, "Boxplot de TNF-a por grupo.png", height = 4.5, width = 6, dpi = 600)

#Plot conjunto
figuracomp<-A + B + C + D + E + G + H
ggsave(plot = figuracomp, "Figura com todas as citocinas", height = 4.5, width = 6, dpi = 600)

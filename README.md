# CBA
# Serrapilheira/ICTP-SAIFR Training Program in Quantitative Biology and Ecology
# Author: Amanda Costa Ayres Salmeron
# Date: 18/08/2022
# Data already published in: https://link.springer.com/article/10.1007/s00430-022-00746-5
# Title: Functional analysis of the immune system of children with microcephaly using serum cytokines
# The scripts, report, raw and processed data, and the outputs can be find in: https://github.com/CompMethods-ICTP-SAIFR-Serrapilheira/CBA

### Objective
Analyze the functionality of immune cells by measuring serum concentrations of IFN-g cytokines, IL-2, IL-4, IL-5, IL-6 and TNF-a.

### Packages
library("dplyr")
library("RVAideMemoire")
library("car")
library("psych")
library("rstatix")
library("DescTools")
library("ggsignif")
library("patchwork")
library("magrittr")
library("ggplot2")
library("pacman")

### Steps used to the exploratory data analysis, statistical analysis and plots
The first step after importing the data was the exploratory analysis. The following analyzes were performed in
relation to the control group and the microcephaly group, evaluating each cytokine separately. 1. Amplitude
analysis by function range;
2. Assessment of the number of appropriate categories by the function nclass.Sturges;
3. Creating a table with categories by function table;
4. Calculation of the mean, deviation, error and median by the function describe; 5. Verification of data
normality by group by the function byf.shapiro;
6. Verification of the homogeneity of variances by the function leveneTest;
7. Checking for the presence of outliers by the function identify_outliers and by plotting using boxplots
for each cytokine;
8. The ANOVA test was then performed for each citokyne using the function aov;
9. Post hoc analyzes were done using the following function PostHocTest by three different methods: duncan,
TukeyHSD and Bonferroni;
10. The Mann-Whitney test was performed by the function wilcox.test;
11. The data distribution of each cytokine in each group was visualized by the function hist;
12. Mean values were ploted with confidence interval and standard deviation per cytokine using the function
ggplot;
13. The final graphs for each cytokine were plotted using the function ggplot, the two groups were plotted
with statistical analysis, the mean and individuals values for each subject.

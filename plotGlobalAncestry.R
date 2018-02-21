setwd("/ebio/abt6_projects9/Methylome_variation_HPG1/newOrigins/post_vcf1/shapeit/for762_eachCluster5/rfmix/misj_global_ancestry")
misj <- read.table("testInd", header=T)
head(misj)
library(ggplot2)
library(reshape2)
misj.m <- melt(misj, id.vars = c("sample", "chr", "gen"))
levels(misj.m$gen1)
misj.m
head(misj.m)
misj.m$gen <- factor(misj.m$gen, levels=c("gen8", "gen20","gen40", "gen50", "gen100", "gen200", "gen400", "gen500"))
p <- ggplot(misj.m, aes(x=variable, y=value)) +geom_boxplot(aes(group=variable)) +geom_jitter(aes(color=gen),width = 0.2,size=4, alpha=0.8)+facet_grid(~chr)
#p
p <- p +scale_color_manual(values=c('#8c510a','#bf812d','#dfc27d','#f6e8c3','#c7eae5','#80cdc1','#35978f','#01665e'))
p <- p +theme_bw()
# p <- p + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
#                panel.background = element_blank())
p

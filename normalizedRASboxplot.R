setwd('/ebio/abt6_projects9/Methylome_variation_HPG1/newOrigins/post_vcf1/shapeit/for762_eachCluster5/rare_alleles/RASSstat/normalized')
normRASS <- read.table('US21_subgroups.RASSstat.txt', header = T)
library(ggplot2)
library(reshape2)
normRASS.m <- melt(normRASS,id.vars = c("cluster"))
head(normRASS.m)

#ggplot(normRASS.m, aes(x=variable, y=value))+geom_dotplot(binaxis = "y", stackdir = "center", dotsize=0.2) +stat_summary(fun.data = "mean_sdl", fun.args=list(mult=1), geom="pointrange", color="red")
#ggplot(normRASS.m, aes(x=variable, y=value))+geom_boxplot()+ facet_wrap(~cluster)
cluster_color_colors <- c("#900c3f", "#204838", "#1f78b4", "#834848", "#505e5e", "#e31a1c", "#6a3d9a", "#b15928", "#ff7f00", "#35978f", "#d53e4f", "#bf812d", "#1a1a1a", "#4575b4", "#5aae61", "#dd3497", "#63531a", "#08306b", "#8c6bb1", "#d7301f")
cols <- c("fs1" = "#900c3f", "fs2" = "#bf812d", "fs3" = "#4575b4", "fs4"= "#5aae61", "fs5"="#dd3497", "fs6"="#63531a", "fs7"="#08306b", "fs8"="#8c6bb1", "fs9"="#d7301f", "fs10"="#204838", "fs11"="#1f78b4", "fs12"="#834848", "fs13"="#505e5e", "fs14"="#e31a1c", "fs15"="#6a3d9a", "fs16"="#b15928", "fs17"="#ff7f00", "fs18"="#35978f", "fs19"="#d53e4f", "fs20"="#1a1a1a")
p <- ggplot(subset(normRASS.m, cluster%in% c("US_21_4")),aes(x=variable, y=value, color=variable, fill=variable))+ geom_boxplot(alpha=0.4)+geom_jitter(position = position_jitter(0.05), size=rel(4), alpha=0.6)+facet_wrap(~cluster, ncol=2)+ scale_color_manual(values =cols) +scale_fill_manual(values =cols)#+ stat_summary(fun.data = "mean_sdl", fun.args=list(mult=1), geom="pointrange", color="black", alpha=0.2)
p <- p + scale_x_discrete(limits=c("fs2", "fs3", "fs4", "fs1", "fs16", "fs19", "fs7", "fs8", "fs9", "fs10", "fs11", "fs12", "fs13", "fs17", "fs18", "fs6", "fs20", "fs5", "fs14", "fs15"))

final_plot <- p +guides(col = guide_legend(ncol = 2, title = "Eurasian Clusters", override.aes = list(size=2))) +theme(legend.text=element_text(size = 20), legend.title=element_text(size=30)) +theme(panel.background = element_rect(colour = "black", size = 1.8))
#final_plot <- final_plot  + theme(legend.key = element_rect(fill = "white"), legend.background= element_rect(fill= "white")) #+ geom_hline(yintercept = 0, color= "red", linetype= "dashed", size = 0.8)
final_plot <- final_plot +  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                                                    panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
final_plot <- final_plot  + theme(axis.ticks.length = unit(2, "cm")) +theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor=element_blank()) +theme(legend.position="NA")
final_plot <- final_plot +theme(axis.title=element_blank(), axis.text=element_text(size = rel(2)), axis.text.x=element_text(size=rel(0.6)))

final_plot

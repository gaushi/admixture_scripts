setwd('/ebio/abt6_projects9/Methylome_variation_HPG1/newOrigins/post_vcf1/nAmericans/toImpute/beagle')
snpden <- read.table('RADmerged.filtered_snps_final.PASS.bi.md0_7.dupRemoved.maximiss0_5.renamed.chr1.nAmRef.bgl.snpden', header = T)

head(snpden)
#snpden$var_10kb <-(snpden$VARIANTS.KB)*10 # adds a new column of snpdensity per 10kb window with name var_10kb
library(ggplot2)
library(reshape2)
library(scales)
snpden_plot <- ggplot(snpden, aes(x=BIN_START, y= SNP_COUNT)) + geom_bar(stat = "identity") + facet_wrap(~CHROM, scales = "free", ncol=1)
snpden_plot <- snpden_plot + scale_x_continuous(breaks = seq(0,31000000,1000000)) +theme(axis.text.x = element_text(angle = 90, hjust = 1))
snpden_plot <- snpden_plot +theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank(), panel.background=element_rect(fill = "#fcf9ef"))
snpden_plot <- snpden_plot + theme(strip.text.x = element_text(size = 25, color = "black")) #increased the size of strip text
snpden_plot <- snpden_plot + theme(strip.background = element_blank(), panel.border = element_rect(color = "black", fill = NA)) 
snpden_plot <- snpden_plot +theme(axis.text.x=element_text(size = 10, face = "bold"), axis.text.y= element_text(size=rel(1.0)))
snpden_plot

snpden_line <- ggplot(snpden, aes(x=BIN_START, y= VARIANTS.KB)) + geom_line(stat = "identity") + facet_wrap(~CHROM, scales = "free", ncol=1)
snpden_line <- snpden_line + scale_x_continuous(breaks = seq(0,31000000,1000000)) +theme(axis.text.x = element_text(angle = 90, hjust = 1))
snpden_line <- snpden_line +theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank(), panel.background=element_rect(fill = "#fcf9ef"))
snpden_line <- snpden_line + theme(strip.text.x = element_text(size = 25, color = "black")) #increased the size of strip text
snpden_line <- snpden_line + theme(strip.background = element_blank(), panel.border = element_rect(color = "black", fill = NA)) 
snpden_line <- snpden_line +theme(axis.text.x=element_text(size = 10, face = "bold"), axis.text.y= element_text(size=rel(1.0)))
snpden_line



#ggsave(snpden_plot, file= "snpden_bar.tiff", scale =1, dpi =600)

snpden_box <- ggplot(snpden, aes(x=BIN_START, y= VARIANTS.KB)) + geom_violin(fill="#A9A9A9") + facet_wrap(~CHROM, scales = "free", ncol=5) 
snpden_box <- snpden_box +theme(axis.text.y = element_text(size=20, face = "bold"), axis.title.x = element_blank()) + scale_y_continuous(breaks= seq(0,100,10))
snpden_box <- snpden_box +theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank(), panel.background=element_rect(fill = "#fcf9ef"))
snpden_box <- snpden_box + theme(strip.text.x = element_text(size = 25, color = "black")) #increased the size of strip text
snpden_box <- snpden_box + theme(strip.background = element_blank(), panel.border = element_rect(color = "black", fill = NA))
snpden_box 

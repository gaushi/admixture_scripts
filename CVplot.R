setwd('/ebio/abt6_projects9/Methylome_variation_HPG1/WGS/data/pool1/EU5_pool1/post_vcf/admixture')
CVerror <- read.table("P20.CV.txt", header = T)
CVplot <- ggplot(CVerror, aes(k,CV)) + geom_line() + geom_point(size = rel(4), col= "black")
CVplot <- CVplot+theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank(), panel.background=element_rect(fill = "white")) +theme(axis.line.x = element_line(colour = "black", size=1), axis.line.y =element_line(color="black", size=1))
CVplot <- CVplot+theme(panel.grid.minor = element_line(color = "grey", linetype = "dashed", size = 0.4), text = element_text(size=20))+theme(axis.title.y=element_text(margin=margin(0,20,0,0))) +theme(axis.title.x=element_text(margin=margin(20,0,0,0)))
CVplot <- CVplot+ theme(axis.text=element_text(size = rel(2))) + theme(axis.title.x = element_text(size = rel(3), color = "black"), axis.title.y= element_text(size = rel(3), color = "black"))
CVplot

setwd('/ebio/abt6_projects9/Methylome_variation_HPG1/newOrigins/post_vcf1/shapeit/for762_eachCluster5/finestructure/nAm/admixtools')
library(scales)
library(ggplot2)
#library(lattice)
library(scales)
library(ggrepel)
require(ggrepel)
eval <- read.table("762_eachCluster5noDup.nAmWGS.nAm.eval")

#eval <- read.table('samples.eval')
evec1.pc<- round(eval[1,1]/sum(eval)*100, digits=2)
evec2.pc <- round(eval[2,1]/sum(eval)*100, digits = 2)
xaxis_label <- c("Eigenvector1 \n" ,evec1.pc, "%" ," of observed genetic variation")
xaxis_label <- toString(xaxis_label)
xaxis_label <- gsub(",","",xaxis_label)
yaxis_label <- c("Eigenvector2 \n" ,evec2.pc, "%" ," of observed genetic variation")
yaxis_label <- toString(yaxis_label)
yaxis_label <- gsub(",","",yaxis_label)
evec <- read.table("762_eachCluster5noDup.nAmWGS.nAm.evec")
head(evec)
evec$V1 <- gsub()
shape_letters <- evec$V12
#evec <- cbind(evec, state_yr)
#color = grDevices::colors()[grep('gr(a|e)y', grDevices::colors(), invert = T)]
#plot1<-ggplot(evec) + geom_point(aes(x= evec$V2, y= evec$V3, color=evec$V12), shape = 19, size= 6, alpha=0.8) +scale_color_manual(values=sample(color,37))
#plot1<-ggplot(evec) + geom_point(aes(x= evec$V2, y= evec$V3, color=evec$V12), shape =19, size= 8, alpha=0.8) + scale_color_manual(values=c("#300018","#0AA6D8","#013349", "#00846F", "#7A4900", "#0000A6","#004D43", "#5A0007", "#809693" ,"#1B4400", "#3B5DFF", "#4A3B53", "#FF2F80", "#61615A","#BA0900","#00C2A0", "#B903AA", "#D16100", "#4C6001", "#47675D"))
#plot1
pal <- c("#CC0744", "#111111", "orangered", "#00846F", "#7B4F4B", "purple4","#A1C299" ,"deepskyblue4", "#0AA6D8", "#013349", "#00846F","steelblue4","#300018", "#0000A6", "green4", "#B79762", "#004D43", "#8FB0FF", "#997D87","#5A0007", "#809693","#7A4900" , "firebrick1", "#4FC601", "#3B5DFF", "#4A3B53", "#FF2F80","#61615A", "#BA0900", "#6B7900", "#00C2A0", "#FFAA92", "#FF90C9", "#B903AA", "#D16100","#300018","#0AA6D8","#013349", "#00846F", "#7A4900", "#0000A6","#004D43", "#5A0007", "#809693" ,"#1B4400", "#3B5DFF", "#4A3B53", "#FF2F80", "#61615A","#BA0900","#00C2A0", "#B903AA", "#D16100", "#4C6001", "#47675D","seagreen","maroon1","sienna2","turquoise4")
 plot1<-ggplot(evec)  +scale_color_manual(values=pal) + geom_text(aes(x= evec$V4, y= evec$V5,label=shape_letters, color=evec$V12), size=3, fontface="bold") +scale_color_manual(values=pal) + scale_x_continuous(breaks = seq(-0.2,0.1,0.025)) +scale_y_continuous(breaks= seq(-0.8,1, 0.1))
plot1
plot1<-ggplot(evec)  +scale_color_manual(values=pal) + geom_point(aes(x= evec$V2, y= evec$V3, color=evec$V12), size=4, fontface="bold", alpha=0.8) +scale_color_manual(values=pal) + scale_x_continuous(breaks = seq(-0.2,0.1,0.025)) +scale_y_continuous(breaks= seq(-0.8,1, 0.1))
plot1
###Specify certain points
#plot1 <- plot1+geom_point(data=testd,aes(x=testd[,3],y=testd[,4]),color="red",shape=8, size=2, stroke=1)
#plot1
#plot2 <- plot1 + geom_text_repel(data=evec, aes(x=evec$V3,y=evec$V4, label = evec$V1, color=evec$V12), size=4)
#plot2 <- plot1 + geom_text(data=testd, aes(x=testd[,2],y=testd[,3], label = testd[,1]), size=3)

#plot2
#####################################

#plot3<-plot2+labs(x=xaxis_label, y= yaxis_label) + theme(legend.position="none", axis.title=element_text(size=20), axis.text=element_text(size=15)) +theme(plot.margin=unit(c(1,2,1,2), "cm"))
#here on wards add different themes
#final_plot <- plot3+theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank(), panel.background=element_blank()) +theme(axis.line.x = element_line(colour = "black", size=1), axis.line.y =element_line(color="black", size=1))
#final_plot <- final_plot+theme(panel.grid.minor = element_line(color = "grey", linetype = "dashed", size = 0.5), text = element_text(size=12))+theme(axis.title.y=element_text(margin=margin(0,20,0,0))) +theme(axis.title.x=element_text(margin=margin(20,0,0,0)))
#final_plot <- final_plot+ theme(axis.text=element_text(size = rel(2))) + theme(axis.title.x = element_text(size = rel(1.5), color = "#0d1d6b"), axis.title.y= element_text(size = rel(1.5), color = "#0d1d6b"))
#final_plot
plot3<-plot1+labs(x=xaxis_label, y= yaxis_label) + theme(legend.position="NA", axis.title=element_text(size=15), axis.text=element_text(size=15)) +theme(plot.margin=unit(c(1,2,1,2), "cm")) 
#with legend
#plot3<-plot2+labs(x=xaxis_label, y= yaxis_label) + theme(legend.position=c(0.2,0.3) , axis.title=element_text(size=15), axis.text=element_text(size=15)) +theme(plot.margin=unit(c(1,2,1,2), "cm")) 
#here on wards add different themes
final_plot <- plot3+theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank(), panel.background=element_rect(fill = "white")) +theme(axis.line.x = element_line(colour = "black", size=0), axis.line.y =element_line(color="black", size=0))
final_plot <- final_plot+theme(panel.grid.minor = element_blank(), text = element_text(size=12))+theme(axis.title.y=element_text(margin=margin(0,20,0,0))) +theme(axis.title.x=element_text(margin=margin(20,0,0,0)))
final_plot <- final_plot+ theme(axis.text=element_text(size = rel(1))) + theme(axis.title.x = element_text(size = rel(2), color = "black"), axis.title.y= element_text(size = rel(2), color = "black"))
final_plot <- final_plot +guides(col = guide_legend(ncol = 2, title = "Populations", override.aes = list(size=5))) +theme(legend.text=element_text(size = 20), legend.title=element_text(size=30)) +theme(panel.background = element_rect(colour = "black", size = 1.8))
final_plot <- final_plot  + theme(legend.key = element_rect(fill = "white"), legend.background= element_rect(fill= "white")) #+ geom_hline(yintercept = 0, color= "red", linetype= "dashed", size = 0.8)
final_plot <- final_plot + scale_x_continuous(breaks = seq(-2,2,0.05)) + scale_y_continuous(breaks= seq(-2,2,0.05)) + theme(axis.ticks.length = unit(.4, "cm"))

final_plot

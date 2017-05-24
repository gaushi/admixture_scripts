setwd('/ebio/abt6_projects9/Methylome_variation_HPG1/WGS/data/pool1/EU5_pool1/post_vcf/admixture')
ordered=read.table("P20.sorted.3.Q")
head(ordered)
barNaming <- function(vec) {
  retVec <- vec
  for (k in 2:length(vec)){
    if(vec[k-1] == vec[k])
      retVec[k] <- ""
  }
  return(retVec)
}

names <- barNaming(ordered$V2)
par(mar=c(10,4,4,4))
library(RColorBrewer)
colors1 <- brewer.pal(8, "Set2")
colors2 <- c("#4D4D4D", "#5DA5DA", "#FAA43A", "#60BD68", "#F17CB0", "#B2912F", "#B276B2", "#DECF3F", "#F15854")
colors = c("#771155", "#AA4488", "#CC99BB", "#114477", "#4477AA", "#77AADD", "#117777", "#44AAAA", "#77CCCC", "#777711", "#AAAA44", "#DDDD77", "#774411", "#AA7744", "#DDAA77", "#771122", "#AA4455", "#DD7788")
barplot(t(as.matrix(ordered[,3:5])), col=colors2, border='black', names.arg=barNaming(ordered$V1), las=2, cex.axis = 1, cex.names = 1.0, space = 0, offset = 1)

#########Indiana ###########
# other way to do it is INRCT <- ordered [which (ordered$V2 == '16IN'),]
ordered$V2
eastcoast <- c("MIKE", "MIFC","Ref_Hpg1", "MIMU", "MISJ", "MIKO", "OHML")
EC <- ordered[grep(paste(eastcoast, collapse = "|"), ordered$V2),]
head(EC)
barNaming <- function(vec) {
  retVec <- vec
  for (k in 2:length(vec)){
    if(vec[k-1] == vec[k])
      retVec[k] <- ""
  }
  return(retVec)
}

barplot(t(as.matrix(EC[, 3:12])), col = colors, border = NA, names.arg= barNaming(EC$V2), las=2, cex.axis = 1,cex.names = 0.5, space=0)
barplot(t(as.matrix(EC[, 3:14])), col = colors, border = "black", names.arg= (EC$V1), las=2, cex.axis = 1,cex.names = 0.5, space=0)
indiana <- c( "16INRC","16INWI", "16INTH", "16OHML", "16OHPR", "16OHOS", "16MISJ", "16MIMU", "16MIKE", "16MIKO", "16MIMB", "16MIFC")
INRCT <- ordered[grep(paste(indiana, collapse = "|"),ordered$V2),]
barNaming <- function(vec) {
  retVec <- vec
  for (k in 2:length(vec)){
    if(vec[k-1] == vec[k])
      retVec[k] <- ""
  }
  return(retVec)
}

barplot(t(as.matrix(INRCT[, 3:18])), col = colors, border = NA, names.arg= barNaming(INRCT$V2), las=2, cex.axis = 1,cex.names = 0.5, space=0)

Rochester<- ordered [which (ordered$V2 == '16INRO'),]
barplot(t(as.matrix(Rochester[, 3:18])), col = colors, border = "black", names.arg= Rochester$V1, las=2, cex.axis = 1, space=0)
TH <- ordered [which (ordered$V2 == '16INTH'),]
barplot(t(as.matrix(TH[, 3:18])), col = colors, border = "black", names.arg= TH$V1, las=2, cex.axis = 1, space=0)
Winnamac<- ordered [which (ordered$V2 == '16INWI'),]
barplot(t(as.matrix(Winnamac[, 3:18])), col = colors, border = "black", names.arg= Winnamac$V1, las=2, cex.axis = 1, space=0)

OHMLNP <- ordered [which (ordered$V2 == '16OHML'),]
head(OHMLNP)
barplot(t(as.matrix(OHMLNP[, 3:18])), col = colors, border = "black", names.arg= OHMLNP$V1, las=2, cex.axis = 1, space=0)
MISJCJT <- ordered [which (ordered$V2 == '16MISJ'),]
head(MISJCJT)
barplot(t(as.matrix(MISJCJT[, 3:18])), col = colors, border = "black", names.arg= MISJCJT$V1, las=2, cex.axis = 1, space=0)
MBT <- ordered [which (ordered$V2 == '16MIMB'),]
head(MBT)
barplot(t(as.matrix(MBT[, 3:18])), col = colors, border = NA, names.arg= MBT$V1, las=2, cex.axis = 1, space=0)
Muskegon <- ordered [which (ordered$V2 == '16MIMU'),]
head(Muskegon)
barplot(t(as.matrix(Muskegon[, 3:18])), col = colors, border = NA, names.arg= Muskegon$V1, las=2, cex.axis = 1, space=0)
Sandy <- ordered [which (ordered$V2 == '16NYSW'),]
head(Sandy)
barplot(t(as.matrix(Sandy[, 3:18])), col = colors, border = NA, names.arg= Sandy$V1, las=2, cex.axis = 1, space=0)

Pemberville <- ordered [which (ordered$V2 == '16OHPR'),]
head(Pemberville)
barplot(t(as.matrix(Pemberville[, 3:18])), col = colors, border = "black", names.arg= Pemberville$V1, las=2, cex.axis = 1, space=0)

Arbo <- ordered [which (ordered$V2 == '16MAAA'),]
head(Arbo)
barplot(t(as.matrix(Arbo[, 3:18])), col = colors, border = NA, names.arg= Arbo$V1, las=2, cex.axis = 1, space=0)
peacecross <- ordered [which (ordered$V2 == '16MDPC'),]
head(peacecross)
barplot(t(as.matrix(peacecross[, 3:18])), col = colors, border = NA, names.arg= peacecross$V1, las=2, cex.axis = 1, space=0)
OSU <- ordered [which (ordered$V2 == '16OHOS'),]
head(OSU)
barplot(t(as.matrix(OSU[, 3:18])), col = colors, border = NA, names.arg= OSU$V1, las=2, cex.axis = 1, space=0)
Kenosha <- ordered [which (ordered$V2 == '16MIKO'),]
head(Kenosha)
barplot(t(as.matrix(Kenosha[, 3:18])), col = colors, border = NA, names.arg= Kenosha$V1, las=2, cex.axis = 1, space=0)
Winnamac<- ordered [which (ordered$V2 == '16INWI'),]
head(Winnamac)
barplot(t(as.matrix(Winnamac[, 3:18])), col = colors, border = NA, names.arg= Winnamac$V1, las=2, cex.axis = 1, space=0)
MylesStandish <- ordered [which (ordered$V2 == '16MAMS'),]
head(MylesStandish)
barplot(t(as.matrix(MylesStandish[, 3:18])), col = colors, border = NA, names.arg= MylesStandish$V1, las=2, cex.axis = 1, space=0)
Norwood<- ordered [which (ordered$V2 == '16MAUR'),]
head(Norwood)
barplot(t(as.matrix(Norwood[, 3:18])), col = colors, border = NA, names.arg= Norwood$V1, las=2, cex.axis = 1, space=0)
Goddard<- ordered [which (ordered$V2 == '16MDSR'),]
head(Goddard)
barplot(t(as.matrix(Goddard[, 3:18])), col = colors, border = NA, names.arg= Goddard$V1, las=2, cex.axis = 1, space=0)
TripleChurch<- ordered [which (ordered$V2 == '16MDTC'),]
head(TripleChurch)
barplot(t(as.matrix(TripleChurch[, 3:18])), col = colors, border = NA, names.arg= TripleChurch$V1, las=2, cex.axis = 1, space=0)
NJSC <- ordered [which (ordered$V2 == '16NJSC'),]
head(NJSC)
barplot(t(as.matrix(NJSC[, 3:18])), col = colors, border = NA, names.arg= NJSC$V1, las=2, cex.axis = 1, space=0)
NJDC <- ordered [which (ordered$V2 == '16NJDC'),]
head(NJDC)
barplot(t(as.matrix(NJDC[, 3:18])), col = colors, border = NA, names.arg= NJDC$V1, las=2, cex.axis = 1, space=0)
Derby <- ordered [which (ordered$V2 == '16CTDE'),]
head(Derby)
barplot(t(as.matrix(Derby[, 3:18])), col = colors, border = NA, names.arg= Derby$V1, las=2, cex.axis = 1, space=0)
PNR <- ordered [which (ordered$V2 == '16CTPN'),]
head(PNR)
barplot(t(as.matrix(PNR[, 3:18])), col = colors, border = NA, names.arg= PNR$V1, las=2, cex.axis = 1, space=0)
RosePark <- ordered [which (ordered$V2 == '16CTRP'),]
head(RosePark)
barplot(t(as.matrix(RosePark[, 3:18])), col = colors, border = NA, names.arg= RosePark$V1, las=2, cex.axis = 1, space=0)
FortCuster <- ordered [which (ordered$V2 == '16MIFC'),]
head(FortCuster)
barplot(t(as.matrix(FortCuster[, 3:18])), col = colors, border = "black", names.arg= FortCuster$V1, las=2, cex.axis = 1, space=0)
KBS <- ordered [which (ordered$V2 == '16MIKE'),]
head(KBS)
barplot(t(as.matrix(KBS[, 3:18])), col = colors, border = "black", names.arg= KBS$V1, las=2, cex.axis = 1, space=0)

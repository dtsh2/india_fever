library(corrplot)
M_ben <- cor(ben_total1[,sapply(ben_total1,is.numeric)])
M_ben<-M_ben[c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean'),c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean')]
corrplot(M_ben,method = 'number')
res1 <- cor.mtest(M_ben, conf.level = 0.95)

M_mad <- cor(mad_total1[,sapply(mad_total1,is.numeric)])
M_mad<-M_mad[c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean'),c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean')]
corrplot(M_mad,method = 'number')
res1 <- cor.mtest(M_mad, conf.level = 0.95)

M_sin <- cor(sin_total1[,sapply(sin_total1,is.numeric)])
M_sin<-M_sin[c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean'),c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean')]
corrplot(M_sin,method = 'number')
res1 <- cor.mtest(M_sin, conf.level = 0.95)

M_pun <- cor(pun_total1[,sapply(pun_total1,is.numeric)])
M_pun<-M_pun[c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean'),c('Tmean','Tmean.max', 'Tmean.min', 'Rtotal', 'Rdays','Hmean')]
corrplot(M_pun,method = 'number')
res1 <- cor.mtest(M_pun, conf.level = 0.95)

rownames(M_ben)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
colnames(M_ben)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
rownames(M_mad)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
colnames(M_mad)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
rownames(M_sin)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
colnames(M_sin)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
rownames(M_pun)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")
colnames(M_pun)<-c("Tmean","T.max","T.min","Rtotal","Rdays","Hmean")

# ## 
# par(mfrow = c(2,2))
# par(xpd=TRUE)
# corrplot(M_ben, p.mat = res1$p,insig = "blank", addCoef.col = "grey",tl.col = 'black',title = 'Bengal',tl.cex = 0.8,mar = c(0, 0, 2, 2))
# corrplot(M_mad, p.mat = res1$p,insig = "blank", addCoef.col = "grey",tl.col = 'black',main = 'Madras',tl.cex = 0.8,mar = c(0, 0, 2, 2))
# corrplot(M_sin, p.mat = res1$p,insig = "blank", addCoef.col = "grey",tl.col = 'black',main = 'Sind',tl.cex = 0.8,mar = c(0, 0, 2, 2))
# corrplot(M_pun, p.mat = res1$p,insig = "blank", addCoef.col = "grey",tl.col = 'black',main = 'Punjab',tl.cex = 0.8,mar = c(0, 0, 2, 2))
# 
# par(mfrow = c(2,2))
# 
# library(RColorBrewer)
# scalebluered <- colorRampPalette(brewer.pal(10, "RdBu"))(10)
# 
# layout(matrix(c(1,2,3,4,5,3), 2, 3, byrow = TRUE))
# par(xpd=TRUE)
# corrplot(M_ben, p.mat = res1$p,insig = "blank", tl.col = 'black',title = 'Bengal',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n")
# corrplot(M_mad, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Madras',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n")
# plot.new()
# colorlegend(xlim=c(0,1), ylim=c(0,1), scalebluered, c(seq(-1,1,.2)), align="l", vertical=TRUE, addlabels=TRUE)
# corrplot(M_sin, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Sind',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n")
# corrplot(M_pun, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Punjab',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n")
# 
# layout(matrix(c(1,2,3,4,5,3), 2, 3, byrow = TRUE))
# par(xpd=TRUE)
# corrplot(M_ben, p.mat = res1$p,insig = "blank", tl.col = 'black',title = 'Bengal',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# corrplot(M_mad, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Madras',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# plot.new()
# colorlegend(xlim=c(0,0.2), ylim=c(0,1), scalebluered, c(seq(-1,1,.2)), align="l", vertical=TRUE, addlabels=TRUE)
# corrplot(M_sin, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Sind',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# corrplot(M_pun, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Punjab',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')

layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE))
par(xpd=TRUE)
corrplot.mixed(M_ben, p.mat = res1$p,insig = "blank", tl.col = 'black',title = 'Bengal',tl.cex = 0.8,mar = c(0, 0, 2, 0))
corrplot.mixed(M_mad, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Madras',tl.cex = 0.8,mar = c(0, 0, 2, 0))
corrplot.mixed(M_sin, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Sind',tl.cex = 0.8,mar = c(0, 0, 2, 0))
corrplot.mixed(M_pun, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Punjab',tl.cex = 0.8,mar = c(0, 0, 2, 0))
# 
# layout(matrix(c(1,2,3,4,5,3), 2, 3, byrow = TRUE))
# par(xpd=TRUE)
# corrplot(M_ben, p.mat = res1$p,insig = "blank", tl.col = 'black',title = 'Bengal',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# corrplot(M_mad, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Madras',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# plot.new()
# colorlegend(xlim=c(0,0.2), ylim=c(0,1), scalebluered, c(seq(-1,1,.2)), align="l", vertical=TRUE, addlabels=TRUE)
# corrplot(M_sin, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Sind',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# corrplot(M_pun, p.mat = res1$p,insig = "blank", tl.col = 'black',main = 'Punjab',tl.cex = 0.8,mar = c(0, 0, 2, 0), cl.pos="n",type = 'upper')
# 

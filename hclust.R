library("TSclust")
library("cluster")

# test<-reshape(pun, idvar = "Station", varying = c('Tmean','Tmean.max','Tmean.min','Rtotal','Rdays','Hmean'), direction = "wide")

sin$station<-gsub("","SHI",sin$Station)

X_pun <- split(pun, pun$Station)
# str(X_pun)
X_mad <- split(mad, mad$Station)
# str(X_mad)
X_sin <- split(sin, sin$Station)
# str(X_sin)
X_ben <- split(ben, ben$Station)
# str(X_ben)

X.ts<-cbind(X_pun[[1]]$Mch,X_pun[[2]]$Mch,X_pun[[3]]$Mch,
            X_pun[[4]]$Mch,X_pun[[5]]$Mch,X_pun[[6]]$Mch,
            X_pun[[7]]$Mch,X_pun[[8]]$Mch,X_pun[[9]]$Mch,
            X_mad[[1]]$Mch,X_mad[[2]]$Mch,X_mad[[3]]$Mch,
            X_mad[[4]]$Mch,X_mad[[5]]$Mch,X_mad[[6]]$Mch,
            X_mad[[7]]$Mch,X_mad[[8]]$Mch,X_mad[[9]]$Mch,
            X_ben[[1]]$Mch,X_ben[[2]]$Mch,X_ben[[3]]$Mch,
            X_ben[[4]]$Mch,X_ben[[5]]$Mch,X_ben[[6]]$Mch,
            X_ben[[7]]$Mch,X_ben[[8]]$Mch,X_ben[[9]]$Mch,
            X_sin[[1]]$Mch,X_sin[[2]]$Mch,X_sin[[3]]$Mch,
            X_sin[[4]]$Mch)

colnames(X.ts)<-c(unique(X_pun[[1]]$Station),
                  unique(X_pun[[2]]$Station),
                  unique(X_pun[[3]]$Station),
                  unique(X_pun[[4]]$Station),
                  unique(X_pun[[5]]$Station),
                  unique(X_pun[[6]]$Station),
                  unique(X_pun[[7]]$Station),
                  unique(X_pun[[8]]$Station),
                  unique(X_pun[[9]]$Station),
                  unique(X_mad[[1]]$Station),
                  unique(X_mad[[2]]$Station),
                  unique(X_mad[[3]]$Station),
                  unique(X_mad[[4]]$Station),
                  unique(X_mad[[5]]$Station),
                  unique(X_mad[[6]]$Station),
                  unique(X_mad[[7]]$Station),
                  unique(X_mad[[8]]$Station),
                  unique(X_mad[[9]]$Station),
                  unique(X_ben[[1]]$Station),
                  unique(X_ben[[2]]$Station),
                  unique(X_ben[[3]]$Station),
                  unique(X_ben[[4]]$Station),
                  unique(X_ben[[5]]$Station),
                  unique(X_ben[[6]]$Station),
                  unique(X_ben[[7]]$Station),
                  unique(X_ben[[8]]$Station),
                  unique(X_ben[[9]]$Station),
                  unique(X_sin[[1]]$Station),
                  unique(X_sin[[2]]$Station),
                  unique(X_sin[[3]]$Station),
                  unique(X_sin[[4]]$Station))

matplot(X.ts, type = 'l')
nn <- ncol(X.ts)
legend("right", colnames(X.ts),col=seq_len(nn),cex=0.8,fill=seq_len(nn))

# res.ts<-complete.cases(X.ts)

X.ts<-as.ts(X.ts,start = min(X_mad$BLL$Date),end = max(X_mad$BLL$Date))
res.ts<-X.ts[complete.cases(X.ts), ] 
# now matrix
res.ts<-as.ts(res.ts,start = min(X_mad$BLL$Date),end = max(X_mad$BLL$Date))
matplot(res.ts, type = 'l')
nn <- ncol(res.ts)
legend("right", colnames(res.ts),col=seq_len(nn),cex=0.8,fill=seq_len(nn))


par(mfrow=c(1,3))
testp<-diss(res.ts, METHOD="INT.PER", normalize=FALSE)
# plot(testp)
hc.dpred <- hclust(testp)
plot(hc.dpred)
# matplot(res.ts,type = 'l')
ttp<-diss(res.ts, METHOD="EUCL")
# plot(ttp)
hc.dpred_t <- hclust(ttp)
plot(hc.dpred_t)

ttp<-diss(res.ts, METHOD="CID")
# plot(ttp)
hc.dpred_t <- hclust(ttp)
plot(hc.dpred_t)
plot(hc.dpred_t, ann=F, hang=0.1)
rect.hclust(hc.dpred_t, k = 4, border = "red")

    # file:///C:/Users/David%20Hayman/Downloads/v62i01.pdf

# library(ggplot2)
# library(reshape2)
# 
# df_melt = melt(res.ts, id.vars = 'date')
# ggplot(df_melt, aes(x = Var1, y = value)) + 
#   geom_line() + 
#   facet_wrap(~ Var2, scales = 'free_y', ncol = 1)

## fever

X_fev.ts<-cbind(X_pun[[1]]$Mfv,X_pun[[2]]$Mfv,X_pun[[3]]$Mfv,
            X_pun[[4]]$Mfv,X_pun[[5]]$Mfv,X_pun[[6]]$Mfv,
            X_pun[[7]]$Mfv,X_pun[[8]]$Mfv,X_pun[[9]]$Mfv,
            X_mad[[1]]$Mfv,X_mad[[2]]$Mfv,X_mad[[3]]$Mfv,
            X_mad[[4]]$Mfv,X_mad[[5]]$Mfv,X_mad[[6]]$Mfv,
            X_mad[[7]]$Mfv,X_mad[[8]]$Mfv,X_mad[[9]]$Mfv,
            X_ben[[1]]$Mfv,X_ben[[2]]$Mfv,X_ben[[3]]$Mfv,
            X_ben[[4]]$Mfv,X_ben[[5]]$Mfv,X_ben[[6]]$Mfv,
            X_ben[[7]]$Mfv,X_ben[[8]]$Mfv,X_ben[[9]]$Mfv,
            X_sin[[1]]$Mfv,X_sin[[2]]$Mfv,X_sin[[3]]$Mfv,
            X_sin[[4]]$Mfv)

colnames(X_fev.ts)<-c(unique(X_pun[[1]]$Station),
                  unique(X_pun[[2]]$Station),
                  unique(X_pun[[3]]$Station),
                  unique(X_pun[[4]]$Station),
                  unique(X_pun[[5]]$Station),
                  unique(X_pun[[6]]$Station),
                  unique(X_pun[[7]]$Station),
                  unique(X_pun[[8]]$Station),
                  unique(X_pun[[9]]$Station),
                  unique(X_mad[[1]]$Station),
                  unique(X_mad[[2]]$Station),
                  unique(X_mad[[3]]$Station),
                  unique(X_mad[[4]]$Station),
                  unique(X_mad[[5]]$Station),
                  unique(X_mad[[6]]$Station),
                  unique(X_mad[[7]]$Station),
                  unique(X_mad[[8]]$Station),
                  unique(X_mad[[9]]$Station),
                  unique(X_ben[[1]]$Station),
                  unique(X_ben[[2]]$Station),
                  unique(X_ben[[3]]$Station),
                  unique(X_ben[[4]]$Station),
                  unique(X_ben[[5]]$Station),
                  unique(X_ben[[6]]$Station),
                  unique(X_ben[[7]]$Station),
                  unique(X_ben[[8]]$Station),
                  unique(X_ben[[9]]$Station),
                  unique(X_sin[[1]]$Station),
                  unique(X_sin[[2]]$Station),
                  unique(X_sin[[3]]$Station),
                  unique(X_sin[[4]]$Station))

matplot(X_fev.ts, type = 'l')
nn_fev <- ncol(X_fev.ts)
legend("right", colnames(X_fev.ts),col=seq_len(nn_fev),cex=0.8,fill=seq_len(nn_fev))

# res.ts<-complete.cases(X.ts)

X_fev.ts<-as.ts(X_fev.ts,start = min(X_mad$BLL$Date),end = max(X_mad$BLL$Date))
res_fev.ts<-X_fev.ts[complete.cases(X_fev.ts), ] 
# now matrix
res_fev.ts<-as.ts(res_fev.ts,start = min(X_mad$BLL$Date),end = max(X_mad$BLL$Date))
matplot(res_fev.ts, type = 'l')
nn_fev <- ncol(res_fev.ts)
legend("right", colnames(res_fev.ts),col=seq_len(nn_fev),cex=0.8,fill=seq_len(nn_fev))


par(mfrow=c(1,3))
testp_fev<-diss(res_fev.ts, METHOD="INT.PER", normalize=FALSE)
# plot(testp)
hc.dpred_fev <- hclust(testp_fev)
plot(hc.dpred_fev)
# matplot(res.ts,type = 'l')
ttp_fev<-diss(res_fev.ts, METHOD="EUCL")
# plot(ttp)
hc.dpred_t_fev <- hclust(ttp_fev)
plot(hc.dpred_t_fev)

ttp_fev<-diss(res_fev.ts, METHOD="CID")
# plot(ttp)
hc.dpred_t_fev <- hclust(ttp_fev)
plot(hc.dpred_t_fev)
plot(hc.dpred_t_fev, ann=F, hang=0.1)
rect.hclust(hc.dpred_t_fev, k = 4, border = "red")

#### Rain 

X_rain.ts<-cbind(X_pun[[1]]$Rtotal,X_pun[[2]]$Rtotal,X_pun[[3]]$Rtotal,
            X_pun[[4]]$Rtotal,X_pun[[5]]$Rtotal,X_pun[[6]]$Rtotal,
            X_pun[[7]]$Rtotal,X_pun[[8]]$Rtotal,X_pun[[9]]$Rtotal,
            X_mad[[1]]$Rtotal,X_mad[[2]]$Rtotal,X_mad[[3]]$Rtotal,
            X_mad[[4]]$Rtotal,X_mad[[5]]$Rtotal,X_mad[[6]]$Rtotal,
            X_mad[[7]]$Rtotal,X_mad[[8]]$Rtotal,X_mad[[9]]$Rtotal,
            X_ben[[1]]$Rtotal,X_ben[[2]]$Rtotal,X_ben[[3]]$Rtotal,
            X_ben[[4]]$Rtotal,X_ben[[5]]$Rtotal,X_ben[[6]]$Rtotal,
            X_ben[[7]]$Rtotal,X_ben[[8]]$Rtotal,X_ben[[9]]$Rtotal,
            X_sin[[1]]$Rtotal,X_sin[[2]]$Rtotal,X_sin[[3]]$Rtotal,
            X_sin[[4]]$Rtotal)

colnames(X_rain.ts)<-c(unique(X_pun[[1]]$Station),
                  unique(X_pun[[2]]$Station),
                  unique(X_pun[[3]]$Station),
                  unique(X_pun[[4]]$Station),
                  unique(X_pun[[5]]$Station),
                  unique(X_pun[[6]]$Station),
                  unique(X_pun[[7]]$Station),
                  unique(X_pun[[8]]$Station),
                  unique(X_pun[[9]]$Station),
                  unique(X_mad[[1]]$Station),
                  unique(X_mad[[2]]$Station),
                  unique(X_mad[[3]]$Station),
                  unique(X_mad[[4]]$Station),
                  unique(X_mad[[5]]$Station),
                  unique(X_mad[[6]]$Station),
                  unique(X_mad[[7]]$Station),
                  unique(X_mad[[8]]$Station),
                  unique(X_mad[[9]]$Station),
                  unique(X_ben[[1]]$Station),
                  unique(X_ben[[2]]$Station),
                  unique(X_ben[[3]]$Station),
                  unique(X_ben[[4]]$Station),
                  unique(X_ben[[5]]$Station),
                  unique(X_ben[[6]]$Station),
                  unique(X_ben[[7]]$Station),
                  unique(X_ben[[8]]$Station),
                  unique(X_ben[[9]]$Station),
                  unique(X_sin[[1]]$Station),
                  unique(X_sin[[2]]$Station),
                  unique(X_sin[[3]]$Station),
                  unique(X_sin[[4]]$Station))

matplot(X_rain.ts, type = 'l')
nn_rain <- ncol(X_rain.ts)
legend("right", colnames(X_rain.ts),col=seq_len(nn_rain),cex=0.8,fill=seq_len(nn_rain))

# res.ts<-complete.cases(X.ts)

X_rain.ts<-as.ts(X_rain.ts,start = min(X_mad$BLL$Date),end = max(X_mad$BLL$Date))
res.ts_rain<-X_rain.ts[complete.cases(X_rain.ts), ] 
# now matrix
res.ts_rain<-as.ts(res.ts_rain,start = min(X_mad$BLL$Date),end = max(X_mad$BLL$Date))
matplot(res.ts_rain, type = 'l')
nn_rain <- ncol(res.ts_rain)
legend("right", colnames(res.ts_rain),col=seq_len(nn_rain),cex=0.8,fill=seq_len(nn_rain))


par(mfrow=c(1,3))
testp_rain<-diss(res.ts_rain, METHOD="INT.PER", normalize=FALSE)
# plot(testp)
hc.dpred_rain <- hclust(testp_rain)
plot(hc.dpred_rain)
# matplot(res.ts,type = 'l')
ttp_rain<-diss(res.ts_rain, METHOD="EUCL")
# plot(ttp)
hc.dpred_t_rain <- hclust(ttp_rain)
plot(hc.dpred_t_rain)

ttp_rain<-diss(res.ts_rain, METHOD="CID")
# plot(ttp)
hc.dpred_t_rain <- hclust(ttp_rain)

plot(hc.dpred_t_rain)
plot(hc.dpred_t_rain, ann=F, hang=0.1)
rect.hclust(hc.dpred_t_rain, k = 4, border = "red")

par(mfrow=c(1,3))
plot(hc.dpred_t, ann=F, hang=0.1)
rect.hclust(hc.dpred_t, k = 4, border = "red")
plot(hc.dpred_t_fev, ann=F, hang=0.1)
rect.hclust(hc.dpred_t_fev, k = 4, border = "red")
plot(hc.dpred_t_rain, ann=F, hang=0.1)
rect.hclust(hc.dpred_t_rain, k = 4, border = "red")

hcd = as.dendrogram(hc.dpred_t)

library(phytools)
library(ape) 
tree_ch<-as.phylo(hc.dpred)
tree_fev<-as.phylo(hc.dpred_fev)
tree_rain<-as.phylo(hc.dpred_rain)

pdf('cophylo_INTPER.pdf',height=12)
par(mfrow=c(3,1))
obj_ch_fev<-cophylo(tree_ch,tree_fev,rotate = T)
plot(obj_ch_fev, mar=c(.1,.1,2,.1), ylim=c(-.2,1))  
title("A. Cholera                                 B. Fever")
obj_ch_rain<-cophylo(tree_ch,tree_rain,rotate = T)
plot(obj_ch_rain, mar=c(.1,.1,2,.1), ylim=c(-.2,1))  
title("C. Cholera                                 D. Total rain")
obj_fev_rain<-cophylo(tree_fev,tree_rain,rotate = T)
plot(obj_fev_rain, mar=c(.1,.1,2,.1), ylim=c(-.2,1))  
title("E. Fever                                 F. Total rain")
dev.off()

tree_ch_t<-as.phylo(hc.dpred_t)
tree_fev_t<-as.phylo(hc.dpred_t_fev)
tree_rain_t<-as.phylo(hc.dpred_t_rain)

pdf('cophylo_CID_EUCL.pdf',height=12)
par(mfrow=c(3,1))
obj_ch_fev_t<-cophylo(tree_ch_t,tree_fev_t,rotate = T)
plot(obj_ch_fev_t, mar=c(.1,.1,2,.1), ylim=c(-.2,1))  
title("A. Cholera                                 B. Fever")
obj_ch_rain_t<-cophylo(tree_ch_t,tree_rain_t,rotate = T)
plot(obj_ch_rain_t, mar=c(.1,.1,2,.1), ylim=c(-.2,1))  
title("C. Cholera                                 D. Total rain")
obj_fev_rain_t<-cophylo(tree_fev_t,tree_rain_t,rotate = T)
plot(obj_fev_rain_t, mar=c(.1,.1,2,.1), ylim=c(-.2,1))  
title("E. Fever                                 F. Total rain")
dev.off()

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

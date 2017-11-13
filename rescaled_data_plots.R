library(scales)
par(bg = "white")
par(mfrow = c(2,2))
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = 
       "grey")
month_st<-c('Jan','Feb','Mar','Apr','May','Jun','Jul',
            'Aug','Sep','Oct','Nov','Dec')

sin_to_coll<-subset(sin_total, select = -c(Station,
                                            Latitude,
                                            Longitude,
                                            Date))
sin_aggdata <-aggregate(sin_to_coll, by=list(sin_to_coll$Year,sin_to_coll$Month), 
                        FUN=mean, na.rm=T)
print(sin_aggdata)
sort_sin_agg<-sin_aggdata[order(sin_aggdata$Group.1, match(sin_aggdata$Group.2,month_st)),]
str(sort_sin_agg)

plot(1:312,rescale(sort_sin_agg$Tmean,to=c(0,1)),type = 'l',col = 'black',
     ylab='Rescaled data',xlab='Month', main='Sind', ylim=c(0,1.1))
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = 
       "grey")
points(rescale(sort_sin_agg$Tmean,to=c(0,1)),type = 'l',col='black')
points(rescale(sort_sin_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_sin_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_sin_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')
legend('top', c('Temperature',"Rainfall", "Cholera", "Fever"), 
       col = c('black', 'blue', 'red','yellow'),lty=1,bty='n',bg="transparent",ncol = 4)

## bengal
ben_to_coll<-subset(ben_total, select = -c(Stations,
                                           Latitude,
                                           Longitude,
                                           Date))
ben_aggdata <-aggregate(ben_to_coll, by=list(ben_to_coll$Year,ben_to_coll$Month), 
                        FUN=mean, na.rm=T)
#print(ben_aggdata)
sort_ben_agg<-ben_aggdata[order(ben_aggdata$Group.1, match(ben_aggdata$Group.2,month_st)),]
str(sort_ben_agg)

plot(1:276,rescale(sort_ben_agg$Tmean,to=c(0,1)),type = 'l',col = 'black',
     ylab='Rescaled data',xlab='Month', main='Bengal', ylim=c(0,1.1))
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = 
       "grey")
points(rescale(sort_ben_agg$Tmean,to=c(0,1)),type = 'l',col='black')
points(rescale(sort_ben_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_ben_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_ben_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')
legend('top', c('Temperature',"Rainfall", "Cholera", "Fever"), 
       col = c('black', 'blue', 'red','yellow'),lty=1,bty='n',bg="transparent",ncol = 4)

## madras
mad_to_coll<-subset(mad_total, select = -c(Station,
                                           Latitude,
                                           Longitude,
                                           Date))
mad_aggdata <-aggregate(mad_to_coll, by=list(mad_to_coll$Year,mad_to_coll$Month), 
                        FUN=mean, na.rm=T)
#print(mad_aggdata)
sort_mad_agg<-mad_aggdata[order(mad_aggdata$Group.1, match(mad_aggdata$Group.2,month_st)),]
str(sort_mad_agg)

plot(1:313,rescale(sort_mad_agg$Tmean,to=c(0,1)),type = 'l',col = 'black',
     ylab='Rescaled data',xlab='Month', main='Madras', ylim=c(0,1.1))
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = 
       "grey")
points(rescale(sort_mad_agg$Tmean,to=c(0,1)),type = 'l',col='black')
points(rescale(sort_mad_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_mad_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_mad_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')
legend('top', c('Temperature',"Rainfall", "Cholera", "Fever"), 
       col = c('black', 'blue', 'red','yellow'),lty=1,bty='n',bg="transparent",ncol = 4)

## punjab
pun_to_coll<-subset(pun_total, select = -c(Station,
                                           Latitude,
                                           Longitude,
                                           Date))
pun_aggdata <-aggregate(pun_to_coll, by=list(pun_to_coll$Year,pun_to_coll$Month), 
                        FUN=mean, na.rm=T)
#print(mad_aggdata)
sort_pun_agg<-pun_aggdata[order(pun_aggdata$Group.1, match(pun_aggdata$Group.2,month_st)),]
str(sort_pun_agg)

plot(1:312,rescale(sort_pun_agg$Tmean,to=c(0,1)),type = 'l',col = 'black',
     ylab='Rescaled data',xlab='Month', main='Punjab', ylim=c(0,1.1))
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = 
       "grey")
points(rescale(sort_pun_agg$Tmean,to=c(0,1)),type = 'l',col='black')
points(rescale(sort_pun_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_pun_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_pun_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')
legend('top', c('Temperature',"Rainfall", "Cholera", "Fever"), 
       col = c('black', 'blue', 'red','yellow'),lty=1,bty='n',bg="transparent",ncol = 4)

#
par(mfrow = c(1,1))
plot(rescale(sort_mad_agg$Tmean,to=c(0,1)),
     rescale(sort_mad_agg$Mfv,to=c(0,1)),
     xlab='Tmean',ylab='Mfv')
plot(rescale(sort_mad_agg$Tmean,to=c(0,1)),
     rescale(sort_mad_agg$Mch,to=c(0,1)),
     xlab='Tmean',ylab='Mch')
plot(rescale(sort_mad_agg$Rtotal,to=c(0,1)),
     rescale(sort_mad_agg$Mfv,to=c(0,1)),
     xlab='Rtotal',ylab='Mfv')
plot(rescale(sort_mad_agg$Rtotal,to=c(0,1)),
     rescale(sort_mad_agg$Mch,to=c(0,1)),
     xlab='Rtotal',ylab='Mch')

#
plot(rescale(sort_ben_agg$Tmean,to=c(0,1)),
     rescale(sort_ben_agg$Mfv,to=c(0,1)),
     xlab='Tmean',ylab='Mfv')
plot(rescale(sort_ben_agg$Tmean,to=c(0,1)),
     rescale(sort_ben_agg$Mch,to=c(0,1)),
     xlab='Tmean',ylab='Mch')
plot(rescale(sort_ben_agg$Rtotal,to=c(0,1)),
     rescale(sort_ben_agg$Mfv,to=c(0,1)),
     xlab='Rtotal',ylab='Mfv')
plot(rescale(sort_ben_agg$Rtotal,to=c(0,1)),
     rescale(sort_ben_agg$Mch,to=c(0,1)),
     xlab='Rtotal',ylab='Mch')
#
plot(rescale(sort_sin_agg$Tmean,to=c(0,1)),
     rescale(sort_sin_agg$Mfv,to=c(0,1)),
     xlab='Tmean',ylab='Mfv')
plot(rescale(sort_sin_agg$Tmean,to=c(0,1)),
     rescale(sort_sin_agg$Mch,to=c(0,1)),
     xlab='Tmean',ylab='Mch')
plot(rescale(sort_sin_agg$Rtotal,to=c(0,1)),
     rescale(sort_sin_agg$Mfv,to=c(0,1)),
     xlab='Rtotal',ylab='Mfv')
plot(rescale(sort_sin_agg$Rtotal,to=c(0,1)),
     rescale(sort_sin_agg$Mch,to=c(0,1)),
     xlab='Rtotal',ylab='Mch')

library(scales)
par(bg = "grey")
par(mfrow = c(1,3))
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
     ylab='rescaled',xlab='year')
points(rescale(sort_sin_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_sin_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_sin_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')

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
     ylab='rescaled',xlab='year')
points(rescale(sort_ben_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_ben_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_ben_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')

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
     ylab='rescaled',xlab='year')
points(rescale(sort_mad_agg$Rtotal,to=c(0,1)),type = 'l',col='blue')
points(rescale(sort_mad_agg$Mch,to=c(0,1)),type = 'l',col = 'red')
points(rescale(sort_mad_agg$Mfv,to=c(0,1)),type = 'l', col = 'yellow')

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

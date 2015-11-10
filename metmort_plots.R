library(ggplot2)
library(lubridate)

date<-paste(1,pun$Month,pun$Year)
pun$Date <- dmy(date)
pun<-pun[-which.max(pun$Rtotal),]# remove max - outlier


qplot(Date, Mfv, data = pun, colour = Station, main="Punjab - fever")
ggsave(
  "Punjabfever.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mch, data = pun, colour = Station, main="Punjab - cholera")
ggsave(
  "Punjabcholera.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Tmean, data = pun, colour = Station, main="Punjab - mean temperature")
ggsave(
  "Punjabmeantemperature.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rtotal, data = pun, colour = Station, main="Punjab - total rain")
ggsave(
  "Punjabtotalrain.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rdays, data = pun, colour = Station, main="Punjab - rain days")
ggsave(
  "Punjabraindays.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

## smooth
 qplot(Date, Mfv, data = pun, colour = Station, geom = c("smooth"),
       span = 0.05, main="Punjab - fever (smooth)")
 ggsave(
   "Punjabfeversmooth.png",
   #ggplot_alternative(),
   width = 6.25,
   height = 4.25,
   dpi = 1200
 )

 qplot(Date, Mch, data = pun, colour = Station, geom = c("smooth"),
       span = 0.05, main="Punjab - cholera (smooth)")
 ggsave(
   "Punjabcholerasmooth.png",
   #ggplot_alternative(),
   width = 6.25,
   height = 4.25,
   dpi = 1200
 )
 
# qplot(Date, Tmean, data = pun, colour = Station, geom = c("smooth"),
#       span = 0.1)
# qplot(Date, Rtotal, data = pun, colour = Station, geom = c("smooth"),
#       span = 0.05)

date<-paste(1,ben$Month,ben$Year)
ben$Date <- dmy(date)

ben<- ben[-which(ben$Year<1878),] # remove max and first section (2 yrs)
ben<-ben[-which.max(ben$Mfv),]
ben<-ben[-which.max(ben$Mch),]

qplot(Date, Mfv, data = ben, colour = Stations, main="Bengal - fever") # remove max and first section (2 yrs)
ggsave(
  "Bengalfever.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mch, data = ben, colour = Stations, main="Bengal - cholera") # remove max
ggsave(
  "Bengalcholera.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Tmean, data = ben, colour = Stations, main="Bengal - mean temperature")
ggsave(
  "Bengalmeantemperature.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rtotal, data = ben, colour = Stations, main="Bengal - total rain")
ggsave(
  "Bengaltotalrain.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rdays, data = ben, colour = Stations, main="Bengal - rain days")
ggsave(
  "Bengalraindays.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

## smooth
qplot(Date, Mfv, data = ben, colour = Stations, geom = c("smooth"),
      span = 0.05, main="Bengal - fever (smooth)")
ggsave(
  "Bengalfeversmooth.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mch, data = ben, colour = Stations, geom = c("smooth"),
      span = 0.05, main="Bengal - cholera (smooth)")
ggsave(
  "Bengalcholerasmooth.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)


date<-paste(1,mad$Month,mad$Year)
mad$Date <- dmy(date)
mad<-mad[-which.max(mad$Rtotal),]


qplot(Date, Mfv, data = mad, colour = Station, main="Madras - fever")
ggsave(
  "Madrasfever.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mch, data = mad, colour = Station, main="Madras - cholera")
ggsave(
  "Madrascholera.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Tmean, data = mad, colour = Station, main="Madras - mean temperature")
ggsave(
  "Madrasmeantemperature.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rtotal, data = mad, colour = Station, main="Madras - total rain") # remove max
ggsave(
  "Madrastotalrain.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rdays, data = mad, colour = Station, main="Madras - rain days") # remove max
ggsave(
  "Madrasraindays.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

date<-paste(1,sin$Month,sin$Year)
sin$Date <- dmy(date)


qplot(Date, Mfv, data = sin, colour = Station, main="Sind - fever")
ggsave(
  "Sindfever.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mch, data = sin, colour = Station, main="Sind - cholera")
ggsave(
  "Sindcholera.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Tmean, data = sin, colour = Station, main="Sind - mean temperature")
ggsave(
  "Sindmeantemperature.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rtotal, data = sin, colour = Station, main="Sind - total rain")
ggsave(
  "Sindtotalrain.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rdays, data = sin, colour = Station, main="Sind - rain days")
ggsave(
  "Sindraindays.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)


qplot(Date, Mfv, data = sin, colour = Station, geom = c("smooth"),
      span = 0.05, main="Sind - fever (smooth)")
ggsave(
  "Sindfeversmooth.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mch, data = sin, colour = Station, geom = c("smooth"),
      span = 0.05, main="Sind - cholera (smooth)")
ggsave(
  "Sindcholerasmooth.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rtotal, data = sin, colour = Station, geom = c("smooth"),
      span = 0.05, main="Sind - total rain")
ggsave(
  "Sindtotalrainsmooth.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Rtotal, data = sin, colour = Station, geom = c("smooth"),
      span = 0.05, main="Sind - total rain") + ylim(-2.75,30)
ggsave(
  "Sindtotalrainsmooth_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)
qplot(Date, Rtotal, data = ben, colour = Stations, geom = c("smooth"),
      span = 0.05, main="Bengal - total rain") + ylim(-2.75,30)
ggsave(
  "Bengaltotalrainsmooth_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)
qplot(Date, Mfv, data = sin, colour = Station, geom = c("smooth"),
      span = 0.05, main="Sind - fever (smooth)")+ ylim(-2.75,14000)
ggsave(
  "Sindfeversmooth_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mfv, data = sin, colour = Station, geom = c("smooth"),
      span = 0.05, main="Sind - fever")+ ylim(-2.75,10000)
ggsave(
  "Sindfeversmooth_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)
qplot(Date, Mfv, data = ben, colour = Stations, geom = c("smooth"),
      span = 0.05, main="Bengal - fever")+ ylim(-2.75,10000)
ggsave(
  "Bengalfeversmooth_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)

qplot(Date, Mfv, data = sin, colour = Station, main="Sind - fever")+ ylim(-2.75,14000)
ggsave(
  "Sindfever_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)
qplot(Date, Mfv, data = ben, colour = Stations, main="Bengal - fever")+ ylim(-2.75,14000)
ggsave(
  "Bengalfever_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)
qplot(Date, Mch, data = sin, colour = Station, main="Sind - cholera")+ ylim(-2.75,10000)
ggsave(
  "Sindcholera_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)
qplot(Date, Mch, data = ben, colour = Stations, main="Bengal - cholera")+ ylim(-2.75,10000)
ggsave(
  "Bengalcholera_scaled.png",
  #ggplot_alternative(),
  width = 6.25,
  height = 4.25,
  dpi = 1200
)


ben_ll<-read.csv("data/bengal_lat_long.csv",header=T,stringsAsFactors = F)
library(dplyr)
ben_total <- merge(ben_ll,ben,by="Stations")

#  library(scatterplot3d)
#  scatterplot3d(x=ben_total1$Longitude, y=ben_total1$Date, z=ben_total1$Mfv, highlight.3d = T, angle = 125,
#                col.axis = "blue", col.grid = "lightblue", cex.axis = 1,
#                cex.lab = 1, main = "Bengal - fever mortality", pch = 20,
#                xlab="Longitude",ylab="Date",zlab="fever mortality / million")
# 
#  scatterplot3d(x=ben_total1$Longitude, y=ben_total1$Date, z=ben_total1$Mch, highlight.3d = T, angle = 125,
#                col.axis = "blue", col.grid = "lightblue", cex.axis = 1,
#                cex.lab = 1, main = "Bengal - cholera", pch = 20,
#                xlab="Longitude",ylab="Date",zlab="Cholera / million")
 
#  scatterplot3d(x=mad_total1$Longitude, y=mad_total1$Date, z=mad_total1$Mfv, highlight.3d = T, angle = 125,
#                col.axis = "blue", col.grid = "lightblue", cex.axis = 1,
#                cex.lab = 1, main = "Madras - fever mortality", pch = 20,
#                xlab="Longitude",ylab="Date",zlab="fever mortality / million")
#  
#  scatterplot3d(x=mad_total1$Longitude, y=mad_total1$Date, z=mad_total1$Mch, highlight.3d = T, angle = 125,
#                col.axis = "blue", col.grid = "lightblue", cex.axis = 1,
#                cex.lab = 1, main = "Madras - cholera", pch = 20,
#                xlab="Longitude",ylab="Date",zlab="Cholera / million")
# axis.Date(1,at=mad_total1$Date,labels=format(mad_total1$Date,"%b-%d"),las=2)
# ggplot()+geom_polygon(data=data,aes(x=long,y=lat,group=group)) 
# ggplot() +  geom_point(data=ben_total, aes(x=Longitude, y=Latitude,fill=Mfv))

# proj4string(total)
# class(total)
# coordinates(total)<-~Longitude+Latitude
# class(total)
# ## [1] "SpatialPointsDataFrame"
# ## attr(,"package")
# ## [1] "sp"
# # does it have a projection/coordinate system assigned?
# proj4string(total) # no
# 
# # we know that the coordinate system is NAD83 so we can manually
# # tell R what the coordinate system is
# proj4string(total)<-CRS("+proj=longlat +datum=NAD83")
# ######## ISSUES HERE
# data<-spTransform(data, CRS(proj4string(total)))

# double check that they match
# identical(proj4string(data),proj4string(total))

library(spTimer)
# data("NYdata")
# s <- c(8, 11, 12, 14, 18, 21, 24, 28)
# DataFit <- spT.subset(data = NYdata, var.name = "s.index", s = s,
#                           reverse = TRUE)
# DataFit <- subset(DataFit,
#                      with(DataFit, !(Day %in% c(30, 31) & Month == 8)))
# DataValPred <- spT.subset(data = NYdata, var.name = "s.index", s = s)
# set.seed(11)
# post.gp <- spT.Gibbs(formula = o8hrmax ~ cMAXTMP + WDSP + RH,
#                       data = DataFit, model = "GP",
#                       coords = ~ Longitude + Latitude, scale.transform = "SQRT",
#                       spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
ben_total1<-na.omit(ben_total)

post.gp_ben <- spT.Gibbs(formula = Mfv ~ Rtotal+Rdays+Tmean,
                     data = ben_total1, model = "GP",
                     coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                     spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_ben)
plot(post.gp_ben)

post.gp_ben_c <- spT.Gibbs(formula = Mch ~ Rtotal+Rdays+Tmean,
                         data = ben_total1, model = "GP",
                         coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                         spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_ben_c)
plot(post.gp_ben_c)

######################
mad_ll<-read.csv("data/madras_lat_long.csv",header=T,stringsAsFactors = F)

mad_total <- merge(mad_ll,mad,by="Station") ## NOTE STATION vs STATIONS

#ggplot()+geom_polygon(data=data,aes(x=long,y=lat,group=group)) 
ggplot() +  geom_point(data=mad_total, aes(x=Longitude, y=Latitude,fill=Mfv))
mad_total<-mad_total[ , -which(names(mad_total) %in% c("Mmille"))]
mad_total1<-na.omit(mad_total)

post.gp_mad <- spT.Gibbs(formula = Mfv ~ Rtotal+Rdays+Tmean,
                         data = mad_total1, model = "GP",
                         coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                         spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_mad)
plot(post.gp_mad)

post.gp_mad_c <- spT.Gibbs(formula = Mch ~ Rtotal+Rdays+Tmean,
                           data = mad_total1, model = "GP",
                           coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                           spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_mad_c)
plot(post.gp_mad_c)

########################
######################
pun_ll<-read.csv("data/punjab_lat_long.csv",header=T,stringsAsFactors = F)

pun_total <- merge(pun_ll,pun,by="Station",all=T) ## NOTE STATION vs STATIONS

#ggplot()+geom_polygon(data=data,aes(x=long,y=lat,group=group)) 
ggplot() +  geom_point(data=pun_total, aes(x=Longitude, y=Latitude,fill=Mfv))
# pun_total<-pun_total[ , -which(names(pun_total) %in% c("Mmille"))]
 pun_total1<-na.omit(pun_total)

post.gp_pun <- spT.Gibbs(formula = Mfv ~ Rtotal+Rdays+Tmean,
                         data = pun_total1, model = "GP",
                         coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                         spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_pun)
plot(post.gp_pun)

post.gp_pun_c <- spT.Gibbs(formula = Mch ~ Rtotal+Rdays+Tmean,
                           data = pun_total1, model = "GP",
                           coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                           spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_pun_c)
plot(post.gp_pun_c)

###########################
######################
sin_ll<-read.csv("data/sind_lat_long.csv",header=T,stringsAsFactors = F)

sin_total <- merge(sin_ll,sin,by="Station") ## NOTE STATION vs STATIONS

#ggplot()+geom_polygon(data=data,aes(x=long,y=lat,group=group)) 
ggplot() +  geom_point(data=sin_total, aes(x=Longitude, y=Latitude,fill=Mfv))
sin_total<-sin_total[ , -which(names(sin_total) %in% c("Mmille","X","Met.region"))]
sin_total1<-na.omit(sin_total)

post.gp_sin <- spT.Gibbs(formula = Mfv ~ Rtotal+Rdays+Tmean,
                         data = sin_total1, model = "GP",
                         coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                         spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_sin)
plot(post.gp_sin)

post.gp_sin_c <- spT.Gibbs(formula = Mch ~ Rtotal+Rdays+Tmean,
                           data = sin_total1, model = "GP",
                           coords = ~ Longitude + Latitude, #scale.transform = "SQRT",
                           spatial.decay = spT.decay(distribution = Gamm(2, 1), tuning = 0.1))
summary(post.gp_sin_c)
plot(post.gp_sin_c)

### plot all the variables for one station

names(sin)
ggplot(sin,aes(x=Date)) + 
  geom_line(aes(y=Tmean)) + 
  geom_line(aes(y=Rtotal),colour='blue') + 
  ylab("Mean temp & total rain") +
  ggtitle("Sind climate")

ggplot(sin,aes(x=Date)) + 
  geom_line(aes(y=Mfv)) + 
  geom_line(aes(y=Mch),colour="red")  + 
  ylab("Mortality data") +
  ggtitle("Sind mortality")

ggplot(sin,aes(x=Date)) + 
  geom_line(aes(y=Rtotal)) + 
  geom_line(aes(y=Mfv/max(Mfv)),colour="red")  + 
  ylab("Mortality data") +
  ggtitle("Sind mortality")


ggplot(pun,aes(x=Date)) + 
  geom_line(aes(y=Tmean)) + 
  geom_line(aes(y=Rtotal),colour="blue")  + 
  ylab("Mean temp & total rain") +
  ggtitle("Punjab climate") 

ggplot(pun,aes(x=Date)) + 
  geom_line(aes(y=Mfv)) + 
  geom_line(aes(y=Mch),colour="red")  + 
  ylab("Mortality data") +
  ggtitle("Punjab mortality")

ggplot(mad,aes(x=Date)) + 
  geom_line(aes(y=Tmean)) + 
  geom_line(aes(y=Rtotal)) 

ggplot(mad,aes(x=Date)) + 
  geom_line(aes(y=Mfv)) + 
  geom_line(aes(y=Mch,colour=Station)) 


# load libraries

library(sp) 

#  raw data check
ben<-read.csv("data/bengal.csv",header=T,stringsAsFactors = F)
pun<-read.csv("data/punjab.csv",header=T,stringsAsFactors = F)
mad<-read.csv("data/madras.csv",header=T,stringsAsFactors = F)
sin<-read.csv("data/sind.csv",header=T,stringsAsFactors = F)

# plot

# pdf("raw_data.pdf", width=10, height=5)
# par(mfrow=c(2,4))
# par(mai=c(0.4,0.4,0.4,0.4))
# 
# plot(as.numeric(as.character(ben$Mch)), main="Bengal - Cholera",ylab="")
# plot(pun$Mch, main="Punjab - Cholera",ylab="")
# plot(mad$Mch, main="Madras - Cholera",ylab="")
# plot(sin$Mch, main="Sind - Cholera",ylab="")
# 
# plot(ben$Mfv, main="Bengal - fever",ylab="")
# plot(pun$Mfv, main="Punjab - fever",ylab="")
# plot(mad$Mfv, main="Madras - fever",ylab="")
# plot(sin$Mfv, main="Sind - fever",ylab="")
# dev.off()


# rds shapefiles from http://www.gadm.org/
# India

data<-readRDS("data/IND_adm0.rds") 
data1<-readRDS("data/IND_adm1.rds") 
data2<-readRDS("data/IND_adm2.rds") 
data3<-readRDS("data/IND_adm3.rds") 

# # plot
# # India
# 
# par(mfrow=c(2,2))
# par(mai=c(0.4,0.4,0.4,0.4))
# plot(data)
# plot(data1)
# plot(data2)
# plot(data3)

# Bangladesh

bdata<-readRDS("data/BGD_adm0.rds") 
bdata1<-readRDS("data/BGD_adm1.rds") 
bdata2<-readRDS("data/BGD_adm2.rds") 
bdata3<-readRDS("data/BGD_adm3.rds") 
bdata4<-readRDS("data/BGD_adm4.rds") 

# par(mfrow=c(2,3))
# par(mai=c(0.4,0.4,0.4,0.4))
# plot(bdata)
# plot(bdata1)
# plot(bdata2)
# plot(bdata3)
# plot(bdata4)

# Pakistan

pdata<-readRDS("data/PAK_adm0.rds") 
pdata1<-readRDS("data/PAK_adm1.rds") 
pdata2<-readRDS("data/PAK_adm2.rds") 
pdata3<-readRDS("data/PAK_adm3.rds") 

# write.csv(data2$NAME_2,file="dt.csv")
# write.csv(bdata2$NAME_2,file="bt.csv")
# write.csv(pdata2$NAME_2,file="pt.csv")

# par(mfrow=c(2,2))
# par(mai=c(0.4,0.4,0.4,0.4))
# plot(pdata)
# plot(pdata1)
# plot(pdata2)
# plot(pdata3)
# 
# par(mfrow=c(1,2))
# par(mai=c(0.4,0.4,0.4,0.4))
# plot(data2,col="grey95")
# plot(pdata2,add=T,col="grey65")
# plot(bdata2,add=T,col="grey65")
# 
# all levels
# 
# plot(data)
# plot(data1,add=T)
# plot(data2,add=T)
# plot(data3,add=T)
# plot(pdata, add=T)
# plot(pdata1,add=T)
# plot(pdata2,add=T)
# plot(pdata3,add=T)
# plot(bdata, add=T)
# plot(bdata1,add=T)
# plot(bdata2,add=T)
# plot(bdata3,add=T)
# plot(bdata4,add=T)
# 

## find districts
## NF == Not Found YET

# NF Chittagong (Ba)
# NF Dacca, Dhaka (Ba)
# NF Jessore (Ba)
# NF Calcutta  (Alipore Observatory) (WB)
# 512 Saugor Island, South 24-Parganas (WB)
# 497 Burdwan, Barddhaman (WB)
# ?? 423 ?? Berhampore, Baharampur (WB)
# 564 Purnea, Purnia (Bi)
# 273 Cuttack (O)
## to find them...

data2[grep("Cuttack", data2$NAME_2, ignore.case=T),]

# plot(data2[2],col=c(rep("grey",272),"red",rep("grey",150),#"red",
#                     rep("grey",73),"red",rep("grey",14),"red",
#                     rep("grey",51),"red",rep("grey",149),"red",
#                     rep("grey",80)))
# # names(bdata2)
# # bdata2$NAME_2
# 
# plot(bdata2[2],
#      col=c(rep("grey",3),"red",rep("grey",9),rep("red",2),
#            rep("grey",9)),add=T)
# ##
# # 379 Madura, Madurai (T)
# # 386 Salem (T)
# # 371 Coimbatore (T)
# # 380 Negapatam, Nagapattinam (T)
# # NF Trichinopoly, Tiruchirappalli (T)
# # 370 Madras, Chennai (T)
# # NF Masulipatam, Machlipatam (AP)
# # 102 Bellary (K)
# # NF Vizagapatam*, Vishakapatam (AP)
# 
# plot(data2[2],col=c(rep("grey",101),"blue",rep("grey",267),#"red",
#                     rep("blue",2),rep("grey",7),rep("blue",2),
#                     rep("grey",5),"blue",
#                     rep("grey",208)),add=T)
# 
# # 3 Delhi
# # 23 pdata Lahore
# # 310 Ludhiana
# # Sialkot
# # 25 pdata Rawalpindi
# # 17 pdata Peshawar
# # 11 pdata Dera Ismail Khan
# # 24 Multan
# # 47 Sirsa
# # data2[grep("Karachi", data2$NAME_2, ignore.case=T),]
# 
# plot(data2[2],col=c(rep("grey",2),"green",rep("grey",20),"green",
#                     rep("grey",22),"green",rep("grey",262),"green",
#                     rep("grey",284)))
# 
# plot(pdata2[2],col=c(rep("grey",10),"green",rep("grey",5),"green",
#                     rep("grey",5),"green","grey","green",
#                     rep("grey",8)),add=T)
# 
# # NF Jacobabad
# # NF Shikarpur
# # 400 Hyderabad
# # 29 pdata Karachi
# 
# plot(data2[2],col=c(rep("grey",399),"orange",rep("grey",194)))
# plot(pdata2[2],col=c(rep("lightgrey",28),"orange",rep("lightgrey",4)),add=T)

## plot all together

## TO DO  #########################################
## sort out plotting code by ID tag in data files #
###################################################

par(mai=c(0.4,0.4,0.4,0.4))

plot(data2[2],col=c(rep("grey",2),
                    "green", # 3 g
                    rep("grey",20),
                    "grey", # 24 g ####### 
                    rep("grey",22),
                    "green", # 47 g
                    rep("grey",54),
                    "blue", # 102 b
                    rep("grey",170),
                    "red", # 273 r
                    rep("grey",36),
                    "green", # 310 g
                    rep("grey",59),
                    "blue", # 370 b
                    "blue", # 371 b
                    rep("grey",7),
                    "blue", # 379 b
                    "blue", # 380
                    rep("grey",5),
                    "blue", # 386 b
                    rep("grey",13),
                    "orange", # 400 o
                    rep("grey",96),
                    "red", # 497 r
                    rep("grey",14),
                    "red", # 512 r
                    rep("grey",51),
                    "red", # 564 r
                    rep("grey",30)))

plot(bdata2[2],
     col=c(rep("grey25",3),"red",rep("grey25",9),rep("red",2),
           rep("grey25",9)),add=T)

plot(pdata2[2],col=c(rep("grey90",10),"green",
                     rep("grey90",5),"green",
                     rep("grey90",5),"green",
                     "grey90","green",
                     rep("grey90",3),
                     "orange",rep("grey90",4)),add=T)

legend("bottomleft",legend=c("Madras",
                      "Bengal",
                      "Punjab",
                      "Sind",
                      "",
                      "India",
                      "Bangladesh",
                      "Pakistan"),bty="n",
       fill=c("blue",
             "red",
             "green",
             "orange",
             "white",
             "grey",
             "grey25",
             "grey90"),
       border=c(rep("black",4),"white",rep("black",3)))
       
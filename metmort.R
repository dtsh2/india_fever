# A "R SpatialPolygonsDataFrame" (.rds) file can be used in R.
# To use it, first load the sp package using 
library(sp) 
# and then use 

data<-readRDS("IND_adm0.rds") 
#(obviously replacing "filename.rds" with the actual filename). 
# See the CRAN spatial task view.
# Note that this is different R file format than used in previous versions (the RData format that could be read via 'load').
data1<-readRDS("IND_adm1.rds") 
data2<-readRDS("IND_adm2.rds") 
data3<-readRDS("IND_adm3.rds") 

par(mfrow=c(2,2))
par(mai=c(0.4,0.4,0.4,0.4))
plot(data)
plot(data1)
plot(data2)
plot(data3)

bdata<-readRDS("BGD_adm0.rds") 
bdata1<-readRDS("BGD_adm1.rds") 
bdata2<-readRDS("BGD_adm2.rds") 
bdata3<-readRDS("BGD_adm3.rds") 
bdata4<-readRDS("BGD_adm4.rds") 

par(mfrow=c(2,3))
par(mai=c(0.4,0.4,0.4,0.4))
plot(bdata)
plot(bdata1)
plot(bdata2)
plot(bdata3)
plot(bdata4)

pdata<-readRDS("PAK_adm0.rds") 
pdata1<-readRDS("PAK_adm1.rds") 
pdata2<-readRDS("PAK_adm2.rds") 
pdata3<-readRDS("PAK_adm3.rds") 

par(mfrow=c(2,2))
par(mai=c(0.4,0.4,0.4,0.4))
plot(pdata)
plot(pdata1)
plot(pdata2)
plot(pdata3)

par(mfrow=c(1,2))
par(mai=c(0.4,0.4,0.4,0.4))
plot(data2,col="grey95")
plot(pdata2,add=T,col="grey65")
plot(bdata2,add=T,col="grey65")

plot(data)
plot(data1,add=T)
plot(data2,add=T)
plot(data3,add=T)
plot(pdata, add=T)
plot(pdata1,add=T)
plot(pdata2,add=T)
plot(pdata3,add=T)
plot(bdata, add=T)
plot(bdata1,add=T)
plot(bdata2,add=T)
plot(bdata3,add=T)
plot(bdata4,add=T)

# 
# # Chittagong (Ba)
# # Dacca, Dhaka (Ba)
# # Jessore (Ba)
# Calcutta  (Alipore Observatory) (WB)
# 512 Saugor Island, South 24-Parganas (WB)
# 497 Burdwan, Barddhaman (WB)
# ? 423 Berhampore, Baharampur (WB)
# 564 Purnea, Purnia (Bi)
# 273 Cuttack (O)
## to fin them...
# data2[grep("Cuttack", data2$NAME_2, ignore.case=T),]

plot(data2[2],col=c(rep("grey",272),"red",rep("grey",150),#"red",
                    rep("grey",73),"red",rep("grey",14),"red",
                    rep("grey",51),"red",rep("grey",149),"red",
                    rep("grey",80)))
# names(bdata2)
# bdata2$NAME_2

plot(bdata2[2],
     col=c(rep("grey",3),"red",rep("grey",9),rep("red",2),
           rep("grey",9)),add=T)
##
# 379 Madura, Madurai (T)
# 386 Salem (T)
# 371 Coimbatore (T)
# 380 Negapatam, Nagapattinam (T)
# Trichinopoly, Tiruchirappalli (T)
# 370 Madras, Chennai (T)
# Masulipatam, Machlipatam (AP)
# 102 Bellary (K)
# Vizagapatam*, Vishakapatam (AP)

plot(data2[2],col=c(rep("grey",101),"blue",rep("grey",267),#"red",
                    rep("blue",2),rep("grey",7),rep("blue",2),
                    rep("grey",5),"blue",
                    rep("grey",208)),add=T)

# 3 Delhi
# 23 pdata Lahore
# 310 Ludhiana
# Sialkot
# 25 pdata Rawalpindi
# 17 pdata Peshawar
# 11 pdata Dera Ismail Khan
# 24 Multan
# 47 Sirsa
# data2[grep("Karachi", data2$NAME_2, ignore.case=T),]

plot(data2[2],col=c(rep("grey",2),"green",rep("grey",20),"green",
                    rep("grey",22),"green",rep("grey",262),"green",
                    rep("grey",284)))

plot(pdata2[2],col=c(rep("grey",10),"green",rep("grey",5),"green",
                    rep("grey",5),"green","grey","green",
                    rep("grey",8)),add=T)

#
# Jacobabad
# Shikarpur
# 400 Hyderabad
# 29 pdata Karachi

plot(data2[2],col=c(rep("grey",399),"orange",rep("grey",194)))
plot(pdata2[2],col=c(rep("lightgrey",28),"orange",rep("lightgrey",4)),add=T)

## all together

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
       
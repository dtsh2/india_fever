library(psych)

post.gp_ben_res<-read.csv('post.gp_ben.csv', stringsAsFactors=FALSE)
post.gp_pun_res<-read.csv('post.gp_pun.csv', stringsAsFactors=FALSE)
post.gp_mad_res<-read.csv('post.gp_mad.csv', stringsAsFactors=FALSE)
post.gp_sin_res<-read.csv('post.gp_sin.csv', stringsAsFactors=FALSE)
post.gp_ben_c_res<-read.csv('post.gp_ben_c.csv', stringsAsFactors=FALSE)
post.gp_pun_c_res<-read.csv('post.gp_pun_c.csv', stringsAsFactors=FALSE)
post.gp_mad_c_res<-read.csv('post.gp_mad_c.csv', stringsAsFactors=FALSE)
post.gp_sin_c_res<-read.csv('post.gp_sin_c.csv', stringsAsFactors=FALSE)

means<-c(post.gp_ben_res$Mean[c(2,3,4)],
         post.gp_pun_res$Mean[c(2,3,4)],
         post.gp_mad_res$Mean[c(2,3,4)],
         post.gp_sin_res$Mean[c(2,3,4)])
         
lows<-c(post.gp_ben_res$Low2.5p[c(2,3,4)],
        post.gp_pun_res$Low2.5p[c(2,3,4)],
        post.gp_mad_res$Low2.5p[c(2,3,4)],
        post.gp_sin_res$Low2.5p[c(2,3,4)])

ups<-c(post.gp_ben_res$Up97.5p[c(2,3,4)],
        post.gp_pun_res$Up97.5p[c(2,3,4)],
        post.gp_mad_res$Up97.5p[c(2,3,4)],
        post.gp_sin_res$Up97.5p[c(2,3,4)])

Region<-c('Bengal','Bengal','Bengal',
         'Punjab','Punjab','Punjab',
         'Madras','Madras','Madras',
         'Sind','Sind','Sind')

Weather<-c(rep(c("Rtotal",'Rdays',"Tmean"),4))

df <- data.frame(x =1:12,
                 Estimate =means,
                 L =lows,
                 U =ups,
                 Weather=Weather,
                 Region=Region)

require(ggplot2)


ggplot(df, aes(x = x, y = Estimate)) +
  geom_point(size = 4,col = as.numeric(factor(Region))) +
  geom_errorbar(aes(ymax = U, ymin = L),width = 0.2,col = as.numeric(factor(Region))) + 
   labs(x = "Variable",
      y = "Coefficient",
        title = "Fever")+ 
  geom_hline(yintercept = 0)+
  scale_x_discrete(labels=Weather,limits = c(1:12))

## cholera
means<-c(post.gp_ben_c_res$Mean[c(2,3,4)],
         post.gp_pun_c_res$Mean[c(2,3,4)],
         post.gp_mad_c_res$Mean[c(2,3,4)],
         post.gp_sin_c_res$Mean[c(2,3,4)])

lows<-c(post.gp_ben_c_res$Low2.5p[c(2,3,4)],
        post.gp_pun_c_res$Low2.5p[c(2,3,4)],
        post.gp_mad_c_res$Low2.5p[c(2,3,4)],
        post.gp_sin_c_res$Low2.5p[c(2,3,4)])

ups<-c(post.gp_ben_c_res$Up97.5p[c(2,3,4)],
       post.gp_pun_c_res$Up97.5p[c(2,3,4)],
       post.gp_mad_c_res$Up97.5p[c(2,3,4)],
       post.gp_sin_c_res$Up97.5p[c(2,3,4)])

Region<-c('Bengal','Bengal','Bengal',
          'Punjab','Punjab','Punjab',
          'Madras','Madras','Madras',
          'Sind','Sind','Sind')

Weather<-c(rep(c("Rtotal",'Rdays',"Tmean"),4))

df <- data.frame(x =1:12,
                 Estimate =means,
                 L =lows,
                 U =ups,
                 Weather=Weather,
                 Region=Region)

require(ggplot2)


ggplot(df, aes(x = x, y = Estimate)) +
  geom_point(size = 4,col = as.numeric(factor(Region))) +
  geom_errorbar(aes(ymax = U, ymin = L),width = 0.2,col = as.numeric(factor(Region))) + 
  labs(x = "Variable",
       y = "Coefficient",
       title = "Cholera")+ 
  geom_hline(yintercept = 0)+
  scale_x_discrete(labels=Weather,limits = c(1:12))

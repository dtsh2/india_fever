par(bg = "white")
par(mfrow = c(2,4))

acf(sort_pun_agg$Mfv,lag.max = length(sort_pun_agg$Mfv), na.action = na.pass, main='Punjab - fever')
acf(sort_mad_agg$Mfv,lag.max = length(sort_mad_agg$Mfv), na.action = na.pass, main='Madras - fever')
##
#acf(sort_sin_agg$Mfv,lag.max = length(sort_sin_agg$Mfv), na.action = na.pass)
#acf(sort_ben_agg$Mfv,lag.max = length(sort_ben_agg$Mfv), na.action = na.pass)
##

library(forecast)
#plot(as.ts(sort_ben_agg$Mfv))
#lines(sort_ben_agg$Mfv)
trend_ben_mfv = ma(sort_ben_agg$Mfv, order = 100, centre = T)
#plot(as.ts(trend_ben_mfv))
detrend_ben_mfv = sort_ben_agg$Mfv - trend_ben_mfv
#plot(as.ts(detrend_ben_mfv))
acf(detrend_ben_mfv,lag.max = length(detrend_ben_mfv), na.action = na.pass, main='Bengal - fever*')

# plot(as.ts(sort_sin_agg$Mfv))
# lines(sort_sin_agg$Mfv)
trend_sin_mfv = ma(sort_sin_agg$Mfv, order = 100, centre = T)
# plot(as.ts(trend_sin_mfv))
detrend_sin_mfv = sort_sin_agg$Mfv - trend_sin_mfv
# plot(as.ts(detrend_sin_mfv))
acf(detrend_sin_mfv,lag.max = length(detrend_sin_mfv), na.action = na.pass, main='Sind - fever*')
##

acf(sort_pun_agg$Mch,lag.max = length(sort_pun_agg$Mch), na.action = na.pass, main='Punjab - cholera')
acf(sort_mad_agg$Mch,lag.max = length(sort_mad_agg$Mch), na.action = na.pass, main='Madras - cholera')
acf(sort_ben_agg$Mch,lag.max = length(sort_ben_agg$Mch), na.action = na.pass, main='Bengal - cholera')
acf(sort_sin_agg$Mch,lag.max = length(sort_sin_agg$Mch), na.action = na.pass, main='Sind - cholera')
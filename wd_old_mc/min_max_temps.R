### RAINY SEASON DAILY MAXIMUM AND MINIMUM TEMPERATURES ###
#### 5/26/2013
#### Working with 'rainy_season2.RData'

#### Requires 'rsXX' data, but note that this used the 'rs08A' and 'rs12A'
#### data that had altered rainy season lengths due to systematic issues
#### in the data collection timing.

library(plyr)
library(data.table)

# Process rainy season dates to average minimum, average maximum, and 
# average temperature (Nov. 1 - May 31, except for shorter in 2008/2012
#####
rs04daily<-rs04[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs04avgs<-rs04daily[,list(rs04avgTmax=mean(tmax),rs04avgTmin=mean(tmin),
                                rs04avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs04avgs,"rsTempVars/rs04avgTemps.csv")

####
rs05daily<-rs05[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs05avgs<-rs05daily[,list(rs05avgTmax=mean(tmax),rs05avgTmin=mean(tmin),
                          rs05avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs05avgs,"rsTempVars/rs05avgTemps.csv")
####

rs06daily<-rs06[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs06avgs<-rs06daily[,list(rs06avgTmax=mean(tmax),rs06avgTmin=mean(tmin),
                          rs06avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs06avgs,"rsTempVars/rs06avgTemps.csv")

####
rs07daily<-rs07[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs07avgs<-rs07daily[,list(rs07avgTmax=mean(tmax),rs07avgTmin=mean(tmin),
                          rs07avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs07avgs,"rsTempVars/rs07avgTemps.csv")
####

rs08daily<-rs08A[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                  by=list(plotid,date)]
rs08avgs<-rs08daily[,list(rs08avgTmax=mean(tmax),rs08avgTmin=mean(tmin),
                            rs08avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs08avgs,"rsTempVars/rs08avgTemps.csv")

rs09daily<-rs09[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs09avgs<-rs09daily[,list(rs09avgTmax=mean(tmax),rs09avgTmin=mean(tmin),
                          rs09avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs09avgs,"rsTempVars/rs09avgTemps.csv")

rs10daily<-rs10[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs10avgs<-rs10daily[,list(rs10avgTmax=mean(tmax),rs10avgTmin=mean(tmin),
                          rs10avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs10avgs,"rsTempVars/rs10avgTemps.csv")

rs11daily<-rs11[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs11avgs<-rs11daily[,list(rs11avgTmax=mean(tmax),rs11avgTmin=mean(tmin),
                          rs11avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs11avgs,"rsTempVars/rs11avgTemps.csv")

rs12daily<-rs12A[,list(tmax=max(tempc),tmin=min(tempc),tavg=mean(tempc)), 
                by=list(plotid,date)]
rs12avgs<-rs12daily[,list(rs12avgTmax=mean(tmax),rs12avgTmin=mean(tmin),
                          rs12avgTemp=mean(tavg)) ,by=plotid]
write.csv(rs12avgs,"rsTempVars/rs12avgTemps.csv")

#####


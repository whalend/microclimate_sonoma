library(plyr,data.table)

files <- list.files("mcorCSV") ##files in folder within defined workspace
##pulls the .csv of the filenames providing a vector with plotIDs
plotname <- strsplit(files,".csv") 

### creates an 'as' function that can be plugged in to identify the date
### format for the 'date' column of the csv files the 'mydate' or 'mydate2' 
### is entered in the 'colClasses' vector

setAs("character", "myDate", function(from) as.Date(from, "%m/%d/%y"))# 2-digit year format
setAs("character", "myDate2", function(from) as.Date(from, "%m/%d/%Y"))# 4-digit year format

n<-length(plotname)

### had to adjust due to inconsitencies in date formatting (4 digit vs 2 digit
### year) 'myDate' works for 2 digit year formatting; 'mydate2' works for 4 
### digit year formatting plots were in 2 digit year format but now all should
### be in four digit year format

system.time(for(p in plotname[1:n]){
  f <- file.path("mcorCSV", paste(p,".csv",sep=""))
  assign(p, read.csv(f, header=T,col.names=c("plotid","logger","date","time","interval","tempc","rh","dewpt"), 
                     colClasses=c("factor","factor","myDate2",rep("factor",2),"numeric")))
  print(p)
})

#### A different piece of code to try sometime that uses the ldply to put the tables all into one data frame as they are read from the directory ####
system.time(all.data<-ldply(list.files("mcorCSV",pattern="csv"), read.csv(, header=T,col.names=c("plotid","logger","date","time","interval","tempc","rh","dewpt"),
                    colClasses=c(rep("factor",2),"myDate2",rep("factor",2),"numeric"))
  #dum$fname=fname # adds filename it was read from as a dummy column
  #return(dum)
))


#### Read in the files with 2-digit year and assign to vector that is their plot id ####
for(p in plotname[x:x]){
  f <- file.path("mcorCSV", paste(p,".csv",sep=""))
  assign(p, read.csv(f, col.names=c("plotid","logger","date","time","interval","tempc","rh","dewpt"), 
                     colClasses = c("factor","factor","myDate",rep("factor",2),"numeric")))
  print(p)
}

object.size(a1)/1048600


#### List of all plot id data frames ####
{mylist <- list(ANN01,ANN02,ANN03,ANN04,ANN05,ANN06,ANN07,ANN08,ANN09,ANN10,ANN11,ANN12,ANN13,ANN14,ANN15,
               ANN17,ANN18,ANN19,ANN20,ANN21,ANN22,ANN23,ANN24,ANN25,ANN27,ANN29,ANN30,ANN31,ANN32,ANN33,
               ANN34,ANN35,ANN36,ANN37,ANN38,APGAR01,ARBIT01,ARBIT02,ARBIT03,ARBIT04,ARBIT05,ATHEA02,
               BACKM02,BACKM03,BACKM04,BACKM05,BADGE01,BELTA01,BELTA02,BELTA03,BELTA04,BELTA07,BELTA08,
               BERGE01,BOUV01,BOUV02,BOUV03,BOUV09,BOWES01,BOWES02,BOWES03,BUSH01,COCHR01,COOK01,COOK02,
               DOMAN01,ELIOT01,FERRA01,FOP04,FOP324,FOP333,FOP340,FRIDE01,GANAY01,GANAY02,GARD01,HALLO01,
               HALOW02,HOOD01,HOOD02,HOOD03,HOOD04,HOOD05,HOOD07,JLSP01,JLSP02,JLSP03,JLSP04,JLSP05,JLSP06,
               JLSP07,JLSP08,JLSP10,JLSP13,JLSP14,JLSP15,JLSP16,JLSP17,JOHNS01,JOHNS02,JROTH01,JROTH02,
               JROTH03,JROTH04,JROTH05,KLASS01,KLASS02,KUNDE01,KUNDE02,KUNDE03,KUNDE04,LARS01,LAZY04,LAZY05,
               LINS01,LUPIN01,MACKI01,MCCOR01,MCCOR02,MCCOR05,MCNEIL01,MCNEIL03,MESCH01,MITSU01,MITSU02,MITSU03,
               MITSU04,MOREL01,MOREL02,MROTH01,MROTH02,MROTH03,MUTTE01,MUTTE02,NELSO01,NELSO02,OTELL01,PARDI01,
               PARSO01,PETER01,PETSN01,PETSN02,PFEND01,PFEND02,PHILL01,PHILL02,PONTI01,PONTI02,REDDE01,REDDE02,
               SAWI01,SCHIEK01,SCHIEK02,SDC01,SDC02,SDC03,SDC04,SDC05,SDC06,SECRET01,SECRET02,SECRET03,SKILE01,
               SPAUL01,SPAUL02,SPIVY01,STATE123,SUGAR01,SUGAR04,SUGAR05,SUGAR07,SUGAR08,SUGAR09,SUGAR11,SUGAR12,
               SUGAR13,SUGAR15,SUGAR16,SUGAR17,SUGAR18,SUGAR19,SUGAR21,SUGAR23,SUGAR24,SUGAR30,SUGAR31,SUGAR32,
               SUMTV01,SUMTV02,SVRP01,SVRP02,TELL02,TELL03,TELL04,TERRI02,TERRI03,VOTRU01,WATKI01,YAHNG01,YAHNG02,
               YAHNG03,ZEN01,ZEN02)}

rm(list=ls(pattern="^Z")) #Remove items from workspace by beginning pattern


### 'rbind' individual data frames into one large data frame

### At this point the ANN03 and ANN21 doubling record doubling errors have been fixed

### ANN03 was duplicated as ANN09, so there had been no ANN09; ANN21 had two files with the same

#### data for 2003-2004 originally merged together ####
system.time({all.data<- rbind(ANN01,ANN02,ANN03,ANN04,ANN05,ANN06,ANN07,ANN08,ANN09,ANN10,ANN11,ANN12,ANN13,ANN14,ANN15,
                ANN17,ANN18,ANN19,ANN20,ANN21,ANN22,ANN23,ANN24,ANN25,ANN27,ANN29,ANN30,ANN31,ANN32,ANN33,
                ANN34,ANN35,ANN36,ANN37,ANN38,APGAR01,ARBIT01,ARBIT02,ARBIT03,ARBIT04,ARBIT05,ATHEA02,
                BACKM02,BACKM03,BACKM04,BACKM05,BADGE01,BELTA01,BELTA02,BELTA03,BELTA04,BELTA07,BELTA08,
                BERGE01,BOUV01,BOUV02,BOUV03,BOUV09,BOWES01,BOWES02,BOWES03,BUSH01,COCHR01,COOK01,COOK02,
                DOMAN01,ELIOT01,FERRA01,FOP04,FOP324,FOP333,FOP340,FRIDE01,GANAY01,GANAY02,GARD01,HALLO01,
                HALOW02,HOOD01,HOOD02,HOOD03,HOOD04,HOOD05,HOOD07,JLSP01,JLSP02,JLSP03,JLSP04,JLSP05,JLSP06,
                JLSP07,JLSP08,JLSP10,JLSP13,JLSP14,JLSP15,JLSP16,JLSP17,JOHNS01,JOHNS02,JROTH01,JROTH02,
                JROTH03,JROTH04,JROTH05,KLASS01,KLASS02,KUNDE01,KUNDE02,KUNDE03,KUNDE04,LARS01,LAZY04,LAZY05,
                LINS01,LUPIN01,MACKI01,MCCOR01,MCCOR02,MCCOR05,MCNEIL01,MCNEIL03,MESCH01,MITSU01,MITSU02,MITSU03,
                MITSU04,MOREL01,MOREL02,MROTH01,MROTH02,MROTH03,MUTTE01,MUTTE02,NELSO01,NELSO02,OTELL01,PARDI01,
                PARSO01,PETER01,PETSN01,PETSN02,PFEND01,PFEND02,PHILL01,PHILL02,PONTI01,PONTI02,REDDE01,REDDE02,
                SAWI01,SCHIEK01,SCHIEK02,SDC01,SDC02,SDC03,SDC04,SDC05,SDC06,SECRET01,SECRET02,SECRET03,SKILE01,
                SPAUL01,SPAUL02,SPIVY01,STATE123,SUGAR01,SUGAR04,SUGAR05,SUGAR07,SUGAR08,SUGAR09,SUGAR11,SUGAR12,
                SUGAR13,SUGAR15,SUGAR16,SUGAR17,SUGAR18,SUGAR19,SUGAR21,SUGAR23,SUGAR24,SUGAR30,SUGAR31,SUGAR32,
                SUMTV01,SUMTV02,SVRP01,SVRP02,TELL02,TELL03,TELL04,TERRI02,TERRI03,VOTRU01,WATKI01,YAHNG01,YAHNG02,
                YAHNG03,ZEN01,ZEN02)}) #Only took about 11 minutes, way faster than the 25 minute ldply function
system.time((all.data$plotid=toupper(all.data$plotid))) #Changes all plot id's to upper case
all.data$plotid=as.factor(all.data$plotid)
all.data$rh=as.numeric(all.data$rh)
all.data$dewpt=as.numeric(all.data$dewpt)
str(all.data)
levels(all.data$plotid)[levels(all.data$plotid)=="ARIBT05"]<-"ARBIT05"
all.data<-all.data[,-7]
all.data<-data.table(all.data) #Convert to data table for faster indexing

### The "fastest" way I could figure out how to get all years from 'mylist' into a data frame b/c we couldn't figure out how to get what was needed out of the list,i.e. determine the number of observations per interval grouped by plot id. Turns out 'rbind' performs this much faster on my laptop anyway. The 8 GB of RAM is a minimum for processing this entire dataset

#system.time(all.data<-ldply(mylist,subset,(date>="2003-01-01" & date<="2012-12-31")))
#system.time((all.data$plotid=toupper(all.data$plotid))) #Changes all plotid to lower case
#all.data<-as.data.table(all.data) #Convert to data table for faster indexing

### Using 'lapply' to run a function across the entire list; this is faster, but then I ran into problems using the 'tapply' function and retaining the plot id
# rs04<-ldply(mylist, subset, (date>="2003-11-01" & date<="2004-05-31"))
# rs04$plotid=tolower(rs04$plotid)
# write.csv(sapply(rs04,function(x) nrow(x)),"rs04obs.csv")
# rs04bind<-rbindlist(rs04) 
# rs05<-lapply(mylist, subset, (date>="2004-11-01" & date<="2005-05-31"))
# write.csv(sapply(rs05,function(x) nrow(x)),"rs05obs.csv")
# rs06<-lapply(mylist, subset, (date>="2005-11-01" & date<="2006-05-31"))
# write.csv(sapply(rs06,function(x) nrow(x)),"rs06obs.csv")
# rs07<-lapply(mylist, subset, (date>="2006-11-01" & date<="2007-05-31"))
# write.csv(sapply(rs07,function(x) nrow(x)),"rs07obs.csv")
# rs08<-lapply(mylist, subset, (date>="2007-11-01" & date<="2008-05-31"))
# write.csv(sapply(rs08,function(x) nrow(x)),"rs08obs.csv")
# rs09<-lapply(mylist, subset, (date>="2008-11-01" & date<="2009-05-31"))
# write.csv(sapply(rs09,function(x) nrow(x)),"rs09obs.csv")
# rs10<-lapply(mylist, subset, (date>="2009-11-01" & date<="2010-05-31"))
# write.csv(sapply(rs10,function(x) nrow(x)),"rs10obs.csv")
# rs11<-lapply(mylist, subset, (date>="2010-11-01" & date<="2011-05-31"))
# write.csv(sapply(rs11,function(x) nrow(x)),"rs11obs.csv")
# rs12<-lapply(mylist, subset, (date>="2011-11-01" & date<="2012-05-31"))
# write.csv(sapply(rs12,function(x) nrow(x)),"rs12obs.csv")

#### Vector with values for converting observations to hours; 30min,35min,1hr,1min,15min,30sec ####
hourConvs<-c(0.5,0.58,1,(1/60),0.25,(1/120)) 


#### Subset all data into rainy season for each year in order to calculate coverage ####
##### Must be in the form of a data table to use %between%
rs04<-all.data[date %between% c("2003-11-01","2004-05-31",incbounds=T)]
rs05<-all.data[date %between% c("2004-11-01","2005-05-31",incbounds=T)]
rs06<-all.data[date %between% c("2005-11-01","2006-05-31",incbounds=T)]
rs07<-all.data[date %between% c("2006-11-01","2007-05-31",incbounds=T)]
rs08<-all.data[date %between% c("2007-11-01","2008-05-31",incbounds=T)]
rs09<-all.data[date %between% c("2008-11-01","2009-05-31",incbounds=T)]
rs10<-all.data[date %between% c("2009-11-01","2010-05-31",incbounds=T)]
rs11<-all.data[date %between% c("2010-11-01","2011-05-31",incbounds=T)]
rs12<-all.data[date %between% c("2011-11-01","2012-05-31",incbounds=T)]

#### Get the number of observations in each interval category for the rainy seasons and change NA to 0 ####
rs04obs<-with(rs04,tapply(plotid,list(plotid,interval),length))
rs04obs[is.na(rs04obs)]<-0
rs05obs<-with(rs05,tapply(plotid,list(plotid,interval),length))
rs05obs[is.na(rs05obs)]<-0
rs06obs<-with(rs06,tapply(plotid,list(plotid,interval),length))
rs06obs[is.na(rs06obs)]<-0
rs07obs<-with(rs07,tapply(plotid,list(plotid,interval),length))
rs07obs[is.na(rs07obs)]<-0
rs08obs<-with(rs08,tapply(plotid,list(plotid,interval),length))
rs08obs[is.na(rs08obs)]<-0
rs09obs<-with(rs09,tapply(plotid,list(plotid,interval),length))
rs09obs[is.na(rs09obs)]<-0
rs10obs<-with(rs10,tapply(plotid,list(plotid,interval),length))
rs10obs[is.na(rs10obs)]<-0
rs11obs<-with(rs11,tapply(plotid,list(plotid,interval),length))
rs11obs[is.na(rs11obs)]<-0
rs12obs<-with(rs12,tapply(plotid,list(plotid,interval),length))
rs12obs[is.na(rs12obs)]<-0

#### Write the number of hours recorded during the rainy season to a file ####
write.csv((rs04obs<-as.data.frame(rowSums((rs04obs %*% hourConvs),na.rm=T))),"rs04hrs.csv")
write.csv((rs05obs<-as.data.frame(rowSums((rs05obs %*% hourConvs),na.rm=T))),"rs05hrs.csv")
write.csv((rs06obs<-as.data.frame(rowSums((rs06obs %*% hourConvs),na.rm=T))),"rs06hrs.csv")
write.csv((rs07obs<-as.data.frame(rowSums((rs07obs %*% hourConvs),na.rm=T))),"rs07hrs.csv")
write.csv((rs08obs<-as.data.frame(rowSums((rs08obs %*% hourConvs),na.rm=T))),"rs08hrs.csv")
write.csv((rs09obs<-as.data.frame(rowSums((rs09obs %*% hourConvs),na.rm=T))),"rs09hrs.csv")
write.csv((rs10obs<-as.data.frame(rowSums((rs10obs %*% hourConvs),na.rm=T))),"rs10hrs.csv")
write.csv((rs11obs<-as.data.frame(rowSums((rs11obs %*% hourConvs),na.rm=T))),"rs11hrs.csv")
write.csv((rs12obs<-as.data.frame(rowSums((rs12obs %*% hourConvs),na.rm=T))),"rs12hrs.csv")


#### Subset data into optimal temperature ranges ####
##### during the rainy season for each year and then obtain the number of records for each logging interval grouped by plotid.
rs04opt<-subset(rs04,(tempc>=14 & tempc<=26))
rs05opt<-subset(rs05,(tempc>=14 & tempc<=26))
rs06opt<-subset(rs06,(tempc>=14 & tempc<=26))
rs07opt<-subset(rs07,(tempc>=14 & tempc<=26))
rs08opt<-subset(rs08,(tempc>=14 & tempc<=26))
rs09opt<-subset(rs09,(tempc>=14 & tempc<=26))
rs10opt<-subset(rs10,(tempc>=14 & tempc<=26))
rs11opt<-subset(rs11,(tempc>=14 & tempc<=26))
rs12opt<-subset(rs12,(tempc>=14 & tempc<=26))


#### Split into number of records in each interval category by plot with NA as zeroes####
rs04opt<-with(rs04opt,tapply(plotid,list(plotid,interval), length))
rs04opt[is.na(rs04opt)]<-0
rs05opt<-with(rs05opt,tapply(plotid,list(plotid,interval), length))
rs05opt[is.na(rs05opt)]<-0
rs06opt<-with(rs06opt,tapply(plotid,list(plotid,interval), length))
rs06opt[is.na(rs06opt)]<-0
rs07opt<-with(rs07opt,tapply(plotid,list(plotid,interval), length))
rs07opt[is.na(rs07opt)]<-0
rs08opt<-with(rs08opt,tapply(plotid,list(plotid,interval), length))
rs08opt[is.na(rs08opt)]<-0
rs09opt<-with(rs09opt,tapply(plotid,list(plotid,interval), length))
rs09opt[is.na(rs09opt)]<-0
rs10opt<-with(rs10opt,tapply(plotid,list(plotid,interval), length))
rs10opt[is.na(rs10opt)]<-0
rs11opt<-with(rs11opt,tapply(plotid,list(plotid,interval), length))
rs11opt[is.na(rs11opt)]<-0
rs12opt<-with(rs12opt,tapply(plotid,list(plotid,interval), length))
rs12opt[is.na(rs12opt)]<-0


#### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv ####
write.csv((rs04opt<-as.data.frame(rowSums((rs04opt %*% hourConvs),na.rm=T))),"rs04opthrs.csv")
write.csv((rs05opt<-as.data.frame(rowSums((rs05opt %*% hourConvs),na.rm=T))),"rs05opthrs.csv")
write.csv((rs06opt<-as.data.frame(rowSums((rs06opt %*% hourConvs),na.rm=T))),"rs06opthrs.csv")
write.csv((rs07opt<-as.data.frame(rowSums((rs07opt %*% hourConvs),na.rm=T))),"rs07opthrs.csv")
write.csv((rs08opt<-as.data.frame(rowSums((rs08opt %*% hourConvs),na.rm=T))),"rs08opthrs.csv")
write.csv((rs09opt<-as.data.frame(rowSums((rs09opt %*% hourConvs),na.rm=T))),"rs09opthrs.csv")
write.csv((rs10opt<-as.data.frame(rowSums((rs10opt %*% hourConvs),na.rm=T))),"rs10opthrs.csv")
write.csv((rs11opt<-as.data.frame(rowSums((rs11opt %*% hourConvs),na.rm=T))),"rs11opthrs.csv")
write.csv((rs12opt<-as.data.frame(rowSums((rs12opt %*% hourConvs),na.rm=T))),"rs12opthrs.csv")


#### Rainy season hours below zero ####
rs04low<-subset(rs04,(tempc<=0))
rs05low<-subset(rs05,(tempc<=0))
rs06low<-subset(rs06,(tempc<=0))
rs07low<-subset(rs07,(tempc<=0))
rs08low<-subset(rs08,(tempc<=0))
rs09low<-subset(rs09,(tempc<=0))
rs10low<-subset(rs10,(tempc<=0))
rs11low<-subset(rs11,(tempc<=0))
rs12low<-subset(rs12,(tempc<=0))


#### Split into number of records in each interval category by plot with NA as zeroes ####
rs04low<-with(rs04low,tapply(plotid,list(plotid,interval), length))
rs04low[is.na(rs04low)]<-0
rs05low<-with(rs05low,tapply(plotid,list(plotid,interval), length))
rs05low[is.na(rs05low)]<-0
rs06low<-with(rs06low,tapply(plotid,list(plotid,interval), length))
rs06low[is.na(rs06low)]<-0
rs07low<-with(rs07low,tapply(plotid,list(plotid,interval), length))
rs07low[is.na(rs07low)]<-0
rs08low<-with(rs08low,tapply(plotid,list(plotid,interval), length))
rs08low[is.na(rs08low)]<-0
rs09low<-with(rs09low,tapply(plotid,list(plotid,interval), length))
rs09low[is.na(rs09low)]<-0
rs10low<-with(rs10low,tapply(plotid,list(plotid,interval), length))
rs10low[is.na(rs10low)]<-0
rs11low<-with(rs11low,tapply(plotid,list(plotid,interval), length))
rs11low[is.na(rs11low)]<-0
rs12low<-with(rs12low,tapply(plotid,list(plotid,interval), length))
rs12low[is.na(rs12low)]<-0

#### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv ####

write.csv((rs04low<-as.data.frame(rowSums((rs04low %*% hourConvs),na.rm=T))),"rs04lowhrs.csv")
write.csv((rs05low<-as.data.frame(rowSums((rs05low %*% hourConvs),na.rm=T))),"rs05lowhrs.csv")
write.csv((rs06low<-as.data.frame(rowSums((rs06low %*% hourConvs),na.rm=T))),"rs06lowhrs.csv")
write.csv((rs07low<-as.data.frame(rowSums((rs07low %*% hourConvs),na.rm=T))),"rs07lowhrs.csv")
write.csv((rs08low<-as.data.frame(rowSums((rs08low %*% hourConvs),na.rm=T))),"rs08lowhrs.csv")
write.csv((rs09low<-as.data.frame(rowSums((rs09low %*% hourConvs),na.rm=T))),"rs09lowhrs.csv")
write.csv((rs10low<-as.data.frame(rowSums((rs10low %*% hourConvs),na.rm=T))),"rs10lowhrs.csv")
write.csv((rs11low<-as.data.frame(rowSums((rs11low %*% hourConvs),na.rm=T))),"rs11lowhrs.csv")
write.csv((rs12low<-as.data.frame(rowSums((rs12low %*% hourConvs),na.rm=T))),"rs12lowhrs.csv")

#### Rainy season hours above 30 C, "high" temperature threshold ####
rs04high<-subset(rs04,(tempc>=30))
rs05high<-subset(rs05,(tempc>=30))
rs06high<-subset(rs06,(tempc>=30))
rs07high<-subset(rs07,(tempc>=30))
rs08high<-subset(rs08,(tempc>=30))
rs09high<-subset(rs09,(tempc>=30))
rs10high<-subset(rs10,(tempc>=30))
rs11high<-subset(rs11,(tempc>=30))
rs12high<-subset(rs12,(tempc>=30))

### Split into number of records in each interval category by plot with NA as zeroes ####
rs04high<-with(rs04high,tapply(plotid,list(plotid,interval), length))
rs04high[is.na(rs04high)]<-0
rs05high<-with(rs05high,tapply(plotid,list(plotid,interval), length))
rs05high[is.na(rs05high)]<-0
rs06high<-with(rs06high,tapply(plotid,list(plotid,interval), length))
rs06high[is.na(rs06high)]<-0
rs07high<-with(rs07high,tapply(plotid,list(plotid,interval), length))
rs07high[is.na(rs07high)]<-0
rs08high<-with(rs08high,tapply(plotid,list(plotid,interval), length))
rs08high[is.na(rs08high)]<-0
rs09high<-with(rs09high,tapply(plotid,list(plotid,interval), length))
rs09high[is.na(rs09high)]<-0
rs10high<-with(rs10high,tapply(plotid,list(plotid,interval), length))
rs10high[is.na(rs10high)]<-0
rs11high<-with(rs11high,tapply(plotid,list(plotid,interval), length))
rs11high[is.na(rs11high)]<-0
rs12high<-with(rs12high,tapply(plotid,list(plotid,interval), length))
rs12high[is.na(rs12high)]<-0

#### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv ####
write.csv((rs04high<-as.data.frame(rowSums((rs04high %*% hourConvs),na.rm=T))),"rs04highhrs.csv")
write.csv((rs05high<-as.data.frame(rowSums((rs05high %*% hourConvs),na.rm=T))),"rs05highhrs.csv")
write.csv((rs06high<-as.data.frame(rowSums((rs06high %*% hourConvs),na.rm=T))),"rs06highhrs.csv")
write.csv((rs07high<-as.data.frame(rowSums((rs07high %*% hourConvs),na.rm=T))),"rs07highhrs.csv")
write.csv((rs08high<-as.data.frame(rowSums((rs08high %*% hourConvs),na.rm=T))),"rs08highhrs.csv")
write.csv((rs09high<-as.data.frame(rowSums((rs09high %*% hourConvs),na.rm=T))),"rs09highhrs.csv")
write.csv((rs10high<-as.data.frame(rowSums((rs10high %*% hourConvs),na.rm=T))),"rs10highhrs.csv")
write.csv((rs11high<-as.data.frame(rowSums((rs11high %*% hourConvs),na.rm=T))),"rs11highhrs.csv")
write.csv((rs12high<-as.data.frame(rowSums((rs12high %*% hourConvs),na.rm=T))),"rs12highhrs.csv")

#### Remove items from workspace by beginning pattern ####
rm(list=ls(pattern="^")) 

#### Water year subsets #### 
##### Pulls data for an entire year between 10/1 and 9/30 DFs in the format 'wyXX' where 'XX' is the two digit year. Begins with 2004 water year 10/1/2003 to 9/30/2004
system.time(wy04<-all.data[date %between% c("2003-10-01","2004-09-30",incbounds=T)])
system.time(wy05<-all.data[date %between% c("2004-10-01","2005-09-30",incbounds=T)])
system.time(wy06<-all.data[date %between% c("2005-10-01","2006-09-30",incbounds=T)])
system.time(wy07<-all.data[date %between% c("2006-10-01","2007-09-30",incbounds=T)])
system.time(wy08<-all.data[date %between% c("2007-10-01","2008-09-30",incbounds=T)])
system.time(wy09<-all.data[date %between% c("2008-10-01","2009-09-30",incbounds=T)])
system.time(wy10<-all.data[date %between% c("2009-10-01","2010-09-30",incbounds=T)])
system.time(wy11<-all.data[date %between% c("2010-10-01","2011-09-30",incbounds=T)])
system.time(wy12<-all.data[date %between% c("2011-10-01","2012-09-30",incbounds=T)])

#### Total hours recorded during the water year ####
wy04hrs<-with(wy04,tapply(plotid,list(plotid,interval), length))
wy04hrs[is.na(wy04hrs)]<-0
wy05hrs<-with(wy05,tapply(plotid,list(plotid,interval), length))
wy05hrs[is.na(wy05hrs)]<-0
wy06hrs<-with(wy06,tapply(plotid,list(plotid,interval), length))
wy06hrs[is.na(wy06hrs)]<-0
wy07hrs<-with(wy07,tapply(plotid,list(plotid,interval), length))
wy07hrs[is.na(wy07hrs)]<-0
wy08hrs<-with(wy08,tapply(plotid,list(plotid,interval), length))
wy08hrs[is.na(wy08hrs)]<-0
wy09hrs<-with(wy09,tapply(plotid,list(plotid,interval), length))
wy09hrs[is.na(wy09hrs)]<-0
wy10hrs<-with(wy10,tapply(plotid,list(plotid,interval), length))
wy10hrs[is.na(wy10hrs)]<-0
wy11hrs<-with(wy11,tapply(plotid,list(plotid,interval), length))
wy11hrs[is.na(wy11hrs)]<-0
wy12hrs<-with(wy12,tapply(plotid,list(plotid,interval), length))
wy12hrs[is.na(wy12hrs)]<-0

write.csv((wy04hrs<-as.data.frame(rowSums((wy04hrs %*% hourConvs),na.rm=T))),"wy04hrs.csv")
write.csv((wy05hrs<-as.data.frame(rowSums((wy05hrs %*% hourConvs),na.rm=T))),"wy05hrs.csv")
write.csv((wy06hrs<-as.data.frame(rowSums((wy06hrs %*% hourConvs),na.rm=T))),"wy06hrs.csv")
write.csv((wy07hrs<-as.data.frame(rowSums((wy07hrs %*% hourConvs),na.rm=T))),"wy07hrs.csv")
write.csv((wy08hrs<-as.data.frame(rowSums((wy08hrs %*% hourConvs),na.rm=T))),"wy08hrs.csv")
write.csv((wy09hrs<-as.data.frame(rowSums((wy09hrs %*% hourConvs),na.rm=T))),"wy09hrs.csv")
write.csv((wy10hrs<-as.data.frame(rowSums((wy10hrs %*% hourConvs),na.rm=T))),"wy10hrs.csv")
write.csv((wy11hrs<-as.data.frame(rowSums((wy11hrs %*% hourConvs),na.rm=T))),"wy11hrs.csv")
write.csv((wy12hrs<-as.data.frame(rowSums((wy12hrs %*% hourConvs),na.rm=T))),"wy12hrs.csv")



#### Water year optimal hours (14-26 C) subset ####
system.time(wy04opt<-wy04[tempc %between% c(14,26,incbounds=T)])
system.time(wy05opt<-wy05[tempc %between% c(14,26,incbounds=T)])
system.time(wy06opt<-wy06[tempc %between% c(14,26,incbounds=T)])
system.time(wy07opt<-wy07[tempc %between% c(14,26,incbounds=T)])
system.time(wy08opt<-wy08[tempc %between% c(14,26,incbounds=T)])
system.time(wy09opt<-wy09[tempc %between% c(14,26,incbounds=T)])
system.time(wy10opt<-wy10[tempc %between% c(14,26,incbounds=T)])
system.time(wy11opt<-wy11[tempc %between% c(14,26,incbounds=T)])
system.time(wy12opt<-wy12[tempc %between% c(14,26,incbounds=T)])

wy04opt<-with(wy04opt,tapply(plotid,list(plotid,interval), length))
wy04opt[is.na(wy04opt)]<-0
wy05opt<-with(wy05opt,tapply(plotid,list(plotid,interval), length))
wy05opt[is.na(wy05opt)]<-0
wy06opt<-with(wy06opt,tapply(plotid,list(plotid,interval), length))
wy06opt[is.na(wy06opt)]<-0
wy07opt<-with(wy07opt,tapply(plotid,list(plotid,interval), length))
wy07opt[is.na(wy07opt)]<-0
wy08opt<-with(wy08opt,tapply(plotid,list(plotid,interval), length))
wy08opt[is.na(wy08opt)]<-0
wy09opt<-with(wy09opt,tapply(plotid,list(plotid,interval), length))
wy09opt[is.na(wy09opt)]<-0
wy10opt<-with(wy10opt,tapply(plotid,list(plotid,interval), length))
wy10opt[is.na(wy10opt)]<-0
wy11opt<-with(wy11opt,tapply(plotid,list(plotid,interval), length))
wy11opt[is.na(wy11opt)]<-0
wy12opt<-with(wy12opt,tapply(plotid,list(plotid,interval), length))
wy12opt[is.na(wy12opt)]<-0

write.csv((wy04opt<-as.data.frame(rowSums((wy04opt %*% hourConvs),na.rm=T))),"wy04opthrs.csv")
write.csv((wy05opt<-as.data.frame(rowSums((wy05opt %*% hourConvs),na.rm=T))),"wy05opthrs.csv")
write.csv((wy06opt<-as.data.frame(rowSums((wy06opt %*% hourConvs),na.rm=T))),"wy06opthrs.csv")
write.csv((wy07opt<-as.data.frame(rowSums((wy07opt %*% hourConvs),na.rm=T))),"wy07opthrs.csv")
write.csv((wy08opt<-as.data.frame(rowSums((wy08opt %*% hourConvs),na.rm=T))),"wy08opthrs.csv")
write.csv((wy09opt<-as.data.frame(rowSums((wy09opt %*% hourConvs),na.rm=T))),"wy09opthrs.csv")
write.csv((wy10opt<-as.data.frame(rowSums((wy10opt %*% hourConvs),na.rm=T))),"wy10opthrs.csv")
write.csv((wy11opt<-as.data.frame(rowSums((wy11opt %*% hourConvs),na.rm=T))),"wy11opthrs.csv")
write.csv((wy12opt<-as.data.frame(rowSums((wy12opt %*% hourConvs),na.rm=T))),"wy12opthrs.csv")


#### Water year hours below zero subset ####
system.time(wy04low<-wy04[tempc <=0])
system.time(wy05low<-wy05[tempc <=0])
system.time(wy06low<-wy06[tempc <=0])
system.time(wy07low<-wy07[tempc <=0])
system.time(wy08low<-wy08[tempc <=0])
system.time(wy09low<-wy09[tempc <=0])
system.time(wy10low<-wy10[tempc <=0])
system.time(wy11low<-wy11[tempc <=0])
system.time(wy12low<-wy12[tempc <=0])

wy04low<-with(wy04low,tapply(plotid,list(plotid,interval), length))
wy04low[is.na(wy04low)]<-0
wy05low<-with(wy05low,tapply(plotid,list(plotid,interval), length))
wy05low[is.na(wy05low)]<-0
wy06low<-with(wy06low,tapply(plotid,list(plotid,interval), length))
wy06low[is.na(wy06low)]<-0
wy07low<-with(wy07low,tapply(plotid,list(plotid,interval), length))
wy07low[is.na(wy07low)]<-0
wy08low<-with(wy08low,tapply(plotid,list(plotid,interval), length))
wy08low[is.na(wy08low)]<-0
wy09low<-with(wy09low,tapply(plotid,list(plotid,interval), length))
wy09low[is.na(wy09low)]<-0
wy10low<-with(wy10low,tapply(plotid,list(plotid,interval), length))
wy10low[is.na(wy10low)]<-0
wy11low<-with(wy11low,tapply(plotid,list(plotid,interval), length))
wy11low[is.na(wy11low)]<-0
wy12low<-with(wy12low,tapply(plotid,list(plotid,interval), length))
wy12low[is.na(wy12low)]<-0

write.csv((wy04low<-as.data.frame(rowSums((wy04low %*% hourConvs),na.rm=T))),"wy04lowhrs.csv")
write.csv((wy05low<-as.data.frame(rowSums((wy05low %*% hourConvs),na.rm=T))),"wy05lowhrs.csv")
write.csv((wy06low<-as.data.frame(rowSums((wy06low %*% hourConvs),na.rm=T))),"wy06lowhrs.csv")
write.csv((wy07low<-as.data.frame(rowSums((wy07low %*% hourConvs),na.rm=T))),"wy07lowhrs.csv")
write.csv((wy08low<-as.data.frame(rowSums((wy08low %*% hourConvs),na.rm=T))),"wy08lowhrs.csv")
write.csv((wy09low<-as.data.frame(rowSums((wy09low %*% hourConvs),na.rm=T))),"wy09lowhrs.csv")
write.csv((wy10low<-as.data.frame(rowSums((wy10low %*% hourConvs),na.rm=T))),"wy10lowhrs.csv")
write.csv((wy11low<-as.data.frame(rowSums((wy11low %*% hourConvs),na.rm=T))),"wy11lowhrs.csv")
write.csv((wy12low<-as.data.frame(rowSums((wy12low %*% hourConvs),na.rm=T))),"wy12lowhrs.csv")


#### Water year hours high temp (above 30 C) ####
system.time(wy04high<-wy04[tempc >=30])
system.time(wy05high<-wy05[tempc >=30])
system.time(wy06high<-wy06[tempc >=30])
system.time(wy07high<-wy07[tempc >=30])
system.time(wy08high<-wy08[tempc >=30])
system.time(wy09high<-wy09[tempc >=30])
system.time(wy10high<-wy10[tempc >=30])
system.time(wy11high<-wy11[tempc >=30])
system.time(wy12high<-wy12[tempc >=30])

wy04high<-with(wy04high,tapply(plotid,list(plotid,interval), length))
wy04high[is.na(wy04high)]<-0
wy05high<-with(wy05high,tapply(plotid,list(plotid,interval), length))
wy05high[is.na(wy05high)]<-0
wy06high<-with(wy06high,tapply(plotid,list(plotid,interval), length))
wy06high[is.na(wy06high)]<-0
wy07high<-with(wy07high,tapply(plotid,list(plotid,interval), length))
wy07high[is.na(wy07high)]<-0
wy08high<-with(wy08high,tapply(plotid,list(plotid,interval), length))
wy08high[is.na(wy08high)]<-0
wy09high<-with(wy09high,tapply(plotid,list(plotid,interval), length))
wy09high[is.na(wy09high)]<-0
wy10high<-with(wy10high,tapply(plotid,list(plotid,interval), length))
wy10high[is.na(wy10high)]<-0
wy11high<-with(wy11high,tapply(plotid,list(plotid,interval), length))
wy11high[is.na(wy11high)]<-0
wy12high<-with(wy12high,tapply(plotid,list(plotid,interval), length))
wy12high[is.na(wy12high)]<-0

write.csv((wy04high<-as.data.frame(rowSums((wy04high %*% hourConvs),na.rm=T))),"wy04highhrs.csv")
write.csv((wy05high<-as.data.frame(rowSums((wy05high %*% hourConvs),na.rm=T))),"wy05highhrs.csv")
write.csv((wy06high<-as.data.frame(rowSums((wy06high %*% hourConvs),na.rm=T))),"wy06highhrs.csv")
write.csv((wy07high<-as.data.frame(rowSums((wy07high %*% hourConvs),na.rm=T))),"wy07highhrs.csv")
write.csv((wy08high<-as.data.frame(rowSums((wy08high %*% hourConvs),na.rm=T))),"wy08highhrs.csv")
write.csv((wy09high<-as.data.frame(rowSums((wy09high %*% hourConvs),na.rm=T))),"wy09highhrs.csv")
write.csv((wy10high<-as.data.frame(rowSums((wy10high %*% hourConvs),na.rm=T))),"wy10highhrs.csv")
write.csv((wy11high<-as.data.frame(rowSums((wy11high %*% hourConvs),na.rm=T))),"wy11highhrs.csv")
write.csv((wy12high<-as.data.frame(rowSums((wy12high %*% hourConvs),na.rm=T))),"wy12highhrs.csv")


#### Using *apply family functions on the list of data frames instead of merging them all into one giant one ####
opt09<- lapply(mylist, subset, (tempc>=14 & tempc<=26) & (date>="2008-11-01" & date<="2009-05-31"))
opt09a<- lapply(mylist, subset, (tempc>=14 & tempc<=26) & (date>="2008-11-01" & date<="2009-05-31") & (interval=="0:35:00"))
opt09b<- rapply(opt09,tapply(1:203,interval,length))

m1<-sapply(opt09, function(x) nrow(x))
m2<-m*.58 #hours within optimal temperature range for 2009 rainy season 35 minute intervals; now how do we carry over plot names??

opt04a <- lapply(mylist1, subset, (tempc>=14 & tempc<=26) & (date>="2003-11-01" & date<="2004-05-31"))

opt10 <- lapply(mylist, subset, (tempc>=14 & tempc<=26) & (date>="2009-11-01" & date<="2010-05-31"))
opt11 <- lapply(mylist, subset, (tempc>=14 & tempc<=26) & (date>="2009-11-01" & date<="2010-05-31"))
opt12 <- lapply(mylist, subset, (tempc>=14 & tempc<=26) & (date>="2009-11-01" & date<="2010-05-31"))
####################





#### EXTRA CODE SNIPPETS FOR VARIOUS THINGS####
### some code aimed at merging multiple files together into one dataframe
folders <- dir("2009_2012")
for(folder in folders){
  f1 <- list.files("2009_2012",paste(folder,"/"),full=T)
  f2 <- lapply(f1,read.csv,header=T)
  f3 <- do.call("rbind",f2)
  ##f1<-do.call("rbind", lapply(list.files("2009_2012", paste(folder),full=T),read.csv,header=T)) 
}

## Read in files to the same vector; i.e. append them together
DATA <- do.call("rbind", lapply( list.files("C:/temp",full=TRUE),
                                 read.csv, header=TRUE))
ANN03.MC <- do.call("rbind", lapply(list.files("2009_2012/ANN03", full=T),read.csv, header=T))



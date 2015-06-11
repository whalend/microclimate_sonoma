### Rainy Season Processing ###

## This is done after the subsetting to the rainy season dates in the
## 'Sonoma Microclimate' script. To run this you need the subset 
## rainy season data so that it can be further subset into temperature
## ranges and thresholds


# Temperature range 5-10 C
#####
rs04hrs5_10<-subset(rs04,(tempc>=5 & tempc<=10))
rs05hrs5_10<-subset(rs05,(tempc>=5 & tempc<=10))
rs06hrs5_10<-subset(rs06,(tempc>=5 & tempc<=10))
rs07hrs5_10<-subset(rs07,(tempc>=5 & tempc<=10))
rs08hrs5_10<-subset(rs08,(tempc>=5 & tempc<=10))
rs09hrs5_10<-subset(rs09,(tempc>=5 & tempc<=10))
rs10hrs5_10<-subset(rs10,(tempc>=5 & tempc<=10))
rs11hrs5_10<-subset(rs11,(tempc>=5 & tempc<=10))
rs12hrs5_10<-subset(rs12,(tempc>=5 & tempc<=10))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs5_10<-with(rs04hrs5_10,tapply(plotid,list(plotid,interval), length))
rs04hrs5_10[is.na(rs04hrs5_10)]<-0
rs05hrs5_10<-with(rs05hrs5_10,tapply(plotid,list(plotid,interval), length))
rs05hrs5_10[is.na(rs05hrs5_10)]<-0
rs06hrs5_10<-with(rs06hrs5_10,tapply(plotid,list(plotid,interval), length))
rs06hrs5_10[is.na(rs06hrs5_10)]<-0
rs07hrs5_10<-with(rs07hrs5_10,tapply(plotid,list(plotid,interval), length))
rs07hrs5_10[is.na(rs07hrs5_10)]<-0
rs08hrs5_10<-with(rs08hrs5_10,tapply(plotid,list(plotid,interval), length))
rs08hrs5_10[is.na(rs08hrs5_10)]<-0
rs09hrs5_10<-with(rs09hrs5_10,tapply(plotid,list(plotid,interval), length))
rs09hrs5_10[is.na(rs09hrs5_10)]<-0
rs10hrs5_10<-with(rs10hrs5_10,tapply(plotid,list(plotid,interval), length))
rs10hrs5_10[is.na(rs10hrs5_10)]<-0
rs11hrs5_10<-with(rs11hrs5_10,tapply(plotid,list(plotid,interval), length))
rs11hrs5_10[is.na(rs11hrs5_10)]<-0
rs12hrs5_10<-with(rs12hrs5_10,tapply(plotid,list(plotid,interval), length))
rs12hrs5_10[is.na(rs12hrs5_10)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs5_10<-as.data.frame(rowSums((rs04hrs5_10 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
rs05hrs5_10<-as.data.frame(rowSums((rs05hrs5_10 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
rs06hrs5_10<-as.data.frame(rowSums((rs06hrs5_10 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
rs07hrs5_10<-as.data.frame(rowSums((rs07hrs5_10 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
rs08hrs5_10<-as.data.frame(rowSums((rs08hrs5_10 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
rs09hrs5_10<-as.data.frame(rowSums((rs09hrs5_10 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
rs10hrs5_10<-as.data.frame(rowSums((rs10hrs5_10 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
rs11hrs5_10<-as.data.frame(rowSums((rs11hrs5_10 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv((
rs12hrs5_10<-as.data.frame(rowSums((rs12hrs5_10 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs5_10<-cbind(rs04hrs5_10,rs05hrs5_10,rs06hrs5_10,rs07hrs5_10,
                 rs08hrs5_10,rs09hrs5_10,rs10hrs5_10,rs11hrs5_10,
                 rs12hrs5_10)
rm(rs04hrs5_10,rs05hrs5_10,rs06hrs5_10,rs07hrs5_10,
   rs08hrs5_10,rs09hrs5_10,rs10hrs5_10,rs11hrs5_10,
   rs12hrs5_10)

# myNames variable is recycled
myNames<-c("rs04hrs5_10","rs05hrs5_10","rs06hrs5_10","rs07hrs5_10",
           "rs08hrs5_10","rs09hrs5_10","rs10hrs5_10","rs11hrs5_10",
           "rs12hrs5_10")
names(rshrs5_10)<-myNames
#####
# Temperature range 10-15 C
#####
rs04hrs10_15<-subset(rs04,(tempc>=10 & tempc<=15))
rs05hrs10_15<-subset(rs05,(tempc>=10 & tempc<=15))
rs06hrs10_15<-subset(rs06,(tempc>=10 & tempc<=15))
rs07hrs10_15<-subset(rs07,(tempc>=10 & tempc<=15))
rs08hrs10_15<-subset(rs08,(tempc>=10 & tempc<=15))
rs09hrs10_15<-subset(rs09,(tempc>=10 & tempc<=15))
rs10hrs10_15<-subset(rs10,(tempc>=10 & tempc<=15))
rs11hrs10_15<-subset(rs11,(tempc>=10 & tempc<=15))
rs12hrs10_15<-subset(rs12,(tempc>=10 & tempc<=15))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs10_15<-with(rs04hrs10_15,tapply(plotid,list(plotid,interval), length))
rs04hrs10_15[is.na(rs04hrs10_15)]<-0
rs05hrs10_15<-with(rs05hrs10_15,tapply(plotid,list(plotid,interval), length))
rs05hrs10_15[is.na(rs05hrs10_15)]<-0
rs06hrs10_15<-with(rs06hrs10_15,tapply(plotid,list(plotid,interval), length))
rs06hrs10_15[is.na(rs06hrs10_15)]<-0
rs07hrs10_15<-with(rs07hrs10_15,tapply(plotid,list(plotid,interval), length))
rs07hrs10_15[is.na(rs07hrs10_15)]<-0
rs08hrs10_15<-with(rs08hrs10_15,tapply(plotid,list(plotid,interval), length))
rs08hrs10_15[is.na(rs08hrs10_15)]<-0
rs09hrs10_15<-with(rs09hrs10_15,tapply(plotid,list(plotid,interval), length))
rs09hrs10_15[is.na(rs09hrs10_15)]<-0
rs10hrs10_15<-with(rs10hrs10_15,tapply(plotid,list(plotid,interval), length))
rs10hrs10_15[is.na(rs10hrs10_15)]<-0
rs11hrs10_15<-with(rs11hrs10_15,tapply(plotid,list(plotid,interval), length))
rs11hrs10_15[is.na(rs11hrs10_15)]<-0
rs12hrs10_15<-with(rs12hrs10_15,tapply(plotid,list(plotid,interval), length))
rs12hrs10_15[is.na(rs12hrs10_15)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs10_15<-as.data.frame(rowSums((rs04hrs10_15 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
rs05hrs10_15<-as.data.frame(rowSums((rs05hrs10_15 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
rs06hrs10_15<-as.data.frame(rowSums((rs06hrs10_15 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
rs07hrs10_15<-as.data.frame(rowSums((rs07hrs10_15 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
rs08hrs10_15<-as.data.frame(rowSums((rs08hrs10_15 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
rs09hrs10_15<-as.data.frame(rowSums((rs09hrs10_15 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
rs10hrs10_15<-as.data.frame(rowSums((rs10hrs10_15 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
rs11hrs10_15<-as.data.frame(rowSums((rs11hrs10_15 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv((
rs12hrs10_15<-as.data.frame(rowSums((rs12hrs10_15 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs10_15<-cbind(rs04hrs10_15,rs05hrs10_15,rs06hrs10_15,rs07hrs10_15,
                 rs08hrs10_15,rs09hrs10_15,rs10hrs10_15,rs11hrs10_15,
                 rs12hrs10_15)
rm(rs04hrs10_15,rs05hrs10_15,rs06hrs10_15,rs07hrs10_15,
   rs08hrs10_15,rs09hrs10_15,rs10hrs10_15,rs11hrs10_15,
   rs12hrs10_15)

# myNames variable is recycled
myNames<-c("rs04hrs10_15","rs05hrs10_15","rs06hrs10_15","rs07hrs10_15",
           "rs08hrs10_15","rs09hrs10_15","rs10hrs10_15","rs11hrs10_15",
           "rs12hrs10_15")
names(rshrs10_15)<-myNames
#####
# Temperature range 15-20 C
#####
rs04hrs15_20<-subset(rs04,(tempc>=15 & tempc<=20))
rs05hrs15_20<-subset(rs05,(tempc>=15 & tempc<=20))
rs06hrs15_20<-subset(rs06,(tempc>=15 & tempc<=20))
rs07hrs15_20<-subset(rs07,(tempc>=15 & tempc<=20))
rs08hrs15_20<-subset(rs08,(tempc>=15 & tempc<=20))
rs09hrs15_20<-subset(rs09,(tempc>=15 & tempc<=20))
rs10hrs15_20<-subset(rs10,(tempc>=15 & tempc<=20))
rs11hrs15_20<-subset(rs11,(tempc>=15 & tempc<=20))
rs12hrs15_20<-subset(rs12,(tempc>=15 & tempc<=20))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs15_20<-with(rs04hrs15_20,tapply(plotid,list(plotid,interval), length))
rs04hrs15_20[is.na(rs04hrs15_20)]<-0
rs05hrs15_20<-with(rs05hrs15_20,tapply(plotid,list(plotid,interval), length))
rs05hrs15_20[is.na(rs05hrs15_20)]<-0
rs06hrs15_20<-with(rs06hrs15_20,tapply(plotid,list(plotid,interval), length))
rs06hrs15_20[is.na(rs06hrs15_20)]<-0
rs07hrs15_20<-with(rs07hrs15_20,tapply(plotid,list(plotid,interval), length))
rs07hrs15_20[is.na(rs07hrs15_20)]<-0
rs08hrs15_20<-with(rs08hrs15_20,tapply(plotid,list(plotid,interval), length))
rs08hrs15_20[is.na(rs08hrs15_20)]<-0
rs09hrs15_20<-with(rs09hrs15_20,tapply(plotid,list(plotid,interval), length))
rs09hrs15_20[is.na(rs09hrs15_20)]<-0
rs10hrs15_20<-with(rs10hrs15_20,tapply(plotid,list(plotid,interval), length))
rs10hrs15_20[is.na(rs10hrs15_20)]<-0
rs11hrs15_20<-with(rs11hrs15_20,tapply(plotid,list(plotid,interval), length))
rs11hrs15_20[is.na(rs11hrs15_20)]<-0
rs12hrs15_20<-with(rs12hrs15_20,tapply(plotid,list(plotid,interval), length))
rs12hrs15_20[is.na(rs12hrs15_20)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs15_20<-as.data.frame(rowSums((rs04hrs15_20 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
rs05hrs15_20<-as.data.frame(rowSums((rs05hrs15_20 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
rs06hrs15_20<-as.data.frame(rowSums((rs06hrs15_20 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
rs07hrs15_20<-as.data.frame(rowSums((rs07hrs15_20 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
rs08hrs15_20<-as.data.frame(rowSums((rs08hrs15_20 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
rs09hrs15_20<-as.data.frame(rowSums((rs09hrs15_20 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
rs10hrs15_20<-as.data.frame(rowSums((rs10hrs15_20 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
rs11hrs15_20<-as.data.frame(rowSums((rs11hrs15_20 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv(
rs12hrs15_20<-as.data.frame(rowSums((rs12hrs15_20 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs15_20<-cbind(rs04hrs15_20,rs05hrs15_20,rs06hrs15_20,rs07hrs15_20,
                  rs08hrs15_20,rs09hrs15_20,rs10hrs15_20,rs11hrs15_20,
                  rs12hrs15_20)
rm(rs04hrs15_20,rs05hrs15_20,rs06hrs15_20,rs07hrs15_20,
   rs08hrs15_20,rs09hrs15_20,rs10hrs15_20,rs11hrs15_20,
   rs12hrs15_20)

# myNames variable is recycled
myNames<-c("rs04hrs15_20","rs05hrs15_20","rs06hrs15_20","rs07hrs15_20",
           "rs08hrs15_20","rs09hrs15_20","rs10hrs15_20","rs11hrs15_20",
           "rs12hrs15_20")
names(rshrs15_20)<-myNames
#####
# Temperature range 20-25 C
#####
rs04hrs20_25<-subset(rs04,(tempc>=20 & tempc<=25))
rs05hrs20_25<-subset(rs05,(tempc>=20 & tempc<=25))
rs06hrs20_25<-subset(rs06,(tempc>=20 & tempc<=25))
rs07hrs20_25<-subset(rs07,(tempc>=20 & tempc<=25))
rs08hrs20_25<-subset(rs08,(tempc>=20 & tempc<=25))
rs09hrs20_25<-subset(rs09,(tempc>=20 & tempc<=25))
rs10hrs20_25<-subset(rs10,(tempc>=20 & tempc<=25))
rs11hrs20_25<-subset(rs11,(tempc>=20 & tempc<=25))
rs12hrs20_25<-subset(rs12,(tempc>=20 & tempc<=25))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs20_25<-with(rs04hrs20_25,tapply(plotid,list(plotid,interval), length))
rs04hrs20_25[is.na(rs04hrs20_25)]<-0
rs05hrs20_25<-with(rs05hrs20_25,tapply(plotid,list(plotid,interval), length))
rs05hrs20_25[is.na(rs05hrs20_25)]<-0
rs06hrs20_25<-with(rs06hrs20_25,tapply(plotid,list(plotid,interval), length))
rs06hrs20_25[is.na(rs06hrs20_25)]<-0
rs07hrs20_25<-with(rs07hrs20_25,tapply(plotid,list(plotid,interval), length))
rs07hrs20_25[is.na(rs07hrs20_25)]<-0
rs08hrs20_25<-with(rs08hrs20_25,tapply(plotid,list(plotid,interval), length))
rs08hrs20_25[is.na(rs08hrs20_25)]<-0
rs09hrs20_25<-with(rs09hrs20_25,tapply(plotid,list(plotid,interval), length))
rs09hrs20_25[is.na(rs09hrs20_25)]<-0
rs10hrs20_25<-with(rs10hrs20_25,tapply(plotid,list(plotid,interval), length))
rs10hrs20_25[is.na(rs10hrs20_25)]<-0
rs11hrs20_25<-with(rs11hrs20_25,tapply(plotid,list(plotid,interval), length))
rs11hrs20_25[is.na(rs11hrs20_25)]<-0
rs12hrs20_25<-with(rs12hrs20_25,tapply(plotid,list(plotid,interval), length))
rs12hrs20_25[is.na(rs12hrs20_25)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs20_25<-as.data.frame(rowSums((rs04hrs20_25 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
rs05hrs20_25<-as.data.frame(rowSums((rs05hrs20_25 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
rs06hrs20_25<-as.data.frame(rowSums((rs06hrs20_25 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
rs07hrs20_25<-as.data.frame(rowSums((rs07hrs20_25 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
rs08hrs20_25<-as.data.frame(rowSums((rs08hrs20_25 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
rs09hrs20_25<-as.data.frame(rowSums((rs09hrs20_25 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
rs10hrs20_25<-as.data.frame(rowSums((rs10hrs20_25 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
rs11hrs20_25<-as.data.frame(rowSums((rs11hrs20_25 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv(
rs12hrs20_25<-as.data.frame(rowSums((rs12hrs20_25 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs20_25<-cbind(rs04hrs20_25,rs05hrs20_25,rs06hrs20_25,rs07hrs20_25,
                  rs08hrs20_25,rs09hrs20_25,rs10hrs20_25,rs11hrs20_25,
                  rs12hrs20_25)
rm(rs04hrs20_25,rs05hrs20_25,rs06hrs20_25,rs07hrs20_25,
   rs08hrs20_25,rs09hrs20_25,rs10hrs20_25,rs11hrs20_25,
   rs12hrs20_25)

# myNames variable is recycled
myNames<-c("rs04hrs20_25","rs05hrs20_25","rs06hrs20_25","rs07hrs20_25",
           "rs08hrs20_25","rs09hrs20_25","rs10hrs20_25","rs11hrs20_25",
           "rs12hrs20_25")
names(rshrs20_25)<-myNames

#####
# Temperature range 5-15 C
#####
rs04hrs5_15<-subset(rs04,(tempc>=5 & tempc<=15))
rs05hrs5_15<-subset(rs05,(tempc>=5 & tempc<=15))
rs06hrs5_15<-subset(rs06,(tempc>=5 & tempc<=15))
rs07hrs5_15<-subset(rs07,(tempc>=5 & tempc<=15))
rs08hrs5_15<-subset(rs08,(tempc>=5 & tempc<=15))
rs09hrs5_15<-subset(rs09,(tempc>=5 & tempc<=15))
rs10hrs5_15<-subset(rs10,(tempc>=5 & tempc<=15))
rs11hrs5_15<-subset(rs11,(tempc>=5 & tempc<=15))
rs12hrs5_15<-subset(rs12,(tempc>=5 & tempc<=15))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs5_15<-with(rs04hrs5_15,tapply(plotid,list(plotid,interval), length))
rs04hrs5_15[is.na(rs04hrs5_15)]<-0
rs05hrs5_15<-with(rs05hrs5_15,tapply(plotid,list(plotid,interval), length))
rs05hrs5_15[is.na(rs05hrs5_15)]<-0
rs06hrs5_15<-with(rs06hrs5_15,tapply(plotid,list(plotid,interval), length))
rs06hrs5_15[is.na(rs06hrs5_15)]<-0
rs07hrs5_15<-with(rs07hrs5_15,tapply(plotid,list(plotid,interval), length))
rs07hrs5_15[is.na(rs07hrs5_15)]<-0
rs08hrs5_15<-with(rs08hrs5_15,tapply(plotid,list(plotid,interval), length))
rs08hrs5_15[is.na(rs08hrs5_15)]<-0
rs09hrs5_15<-with(rs09hrs5_15,tapply(plotid,list(plotid,interval), length))
rs09hrs5_15[is.na(rs09hrs5_15)]<-0
rs10hrs5_15<-with(rs10hrs5_15,tapply(plotid,list(plotid,interval), length))
rs10hrs5_15[is.na(rs10hrs5_15)]<-0
rs11hrs5_15<-with(rs11hrs5_15,tapply(plotid,list(plotid,interval), length))
rs11hrs5_15[is.na(rs11hrs5_15)]<-0
rs12hrs5_15<-with(rs12hrs5_15,tapply(plotid,list(plotid,interval), length))
rs12hrs5_15[is.na(rs12hrs5_15)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
  rs04hrs5_15<-as.data.frame(rowSums((rs04hrs5_15 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
  rs05hrs5_15<-as.data.frame(rowSums((rs05hrs5_15 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
  rs06hrs5_15<-as.data.frame(rowSums((rs06hrs5_15 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
  rs07hrs5_15<-as.data.frame(rowSums((rs07hrs5_15 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
  rs08hrs5_15<-as.data.frame(rowSums((rs08hrs5_15 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
  rs09hrs5_15<-as.data.frame(rowSums((rs09hrs5_15 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
  rs10hrs5_15<-as.data.frame(rowSums((rs10hrs5_15 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
  rs11hrs5_15<-as.data.frame(rowSums((rs11hrs5_15 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv((
  rs12hrs5_15<-as.data.frame(rowSums((rs12hrs5_15 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs5_15<-cbind(rs04hrs5_15,rs05hrs5_15,rs06hrs5_15,rs07hrs5_15,
                 rs08hrs5_15,rs09hrs5_15,rs10hrs5_15,rs11hrs5_15,
                 rs12hrs5_15)
rm(rs04hrs5_15,rs05hrs5_15,rs06hrs5_15,rs07hrs5_15,
   rs08hrs5_15,rs09hrs5_15,rs10hrs5_15,rs11hrs5_15,
   rs12hrs5_15)

# myNames variable is recycled
myNames<-c("rs04hrs5_15","rs05hrs5_15","rs06hrs5_15","rs07hrs5_15",
               "rs08hrs5_15","rs09hrs5_15","rs10hrs5_15","rs11hrs5_15",
               "rs12hrs5_15")
names(rshrs5_15)<-myNames
#####
# Temperature range 5-20
#####
rs04hrs5_20<-subset(rs04,(tempc>=5 & tempc<=20))
rs05hrs5_20<-subset(rs05,(tempc>=5 & tempc<=20))
rs06hrs5_20<-subset(rs06,(tempc>=5 & tempc<=20))
rs07hrs5_20<-subset(rs07,(tempc>=5 & tempc<=20))
rs08hrs5_20<-subset(rs08,(tempc>=5 & tempc<=20))
rs09hrs5_20<-subset(rs09,(tempc>=5 & tempc<=20))
rs10hrs5_20<-subset(rs10,(tempc>=5 & tempc<=20))
rs11hrs5_20<-subset(rs11,(tempc>=5 & tempc<=20))
rs12hrs5_20<-subset(rs12,(tempc>=5 & tempc<=20))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs5_20<-with(rs04hrs5_20,tapply(plotid,list(plotid,interval), length))
rs04hrs5_20[is.na(rs04hrs5_20)]<-0
rs05hrs5_20<-with(rs05hrs5_20,tapply(plotid,list(plotid,interval), length))
rs05hrs5_20[is.na(rs05hrs5_20)]<-0
rs06hrs5_20<-with(rs06hrs5_20,tapply(plotid,list(plotid,interval), length))
rs06hrs5_20[is.na(rs06hrs5_20)]<-0
rs07hrs5_20<-with(rs07hrs5_20,tapply(plotid,list(plotid,interval), length))
rs07hrs5_20[is.na(rs07hrs5_20)]<-0
rs08hrs5_20<-with(rs08hrs5_20,tapply(plotid,list(plotid,interval), length))
rs08hrs5_20[is.na(rs08hrs5_20)]<-0
rs09hrs5_20<-with(rs09hrs5_20,tapply(plotid,list(plotid,interval), length))
rs09hrs5_20[is.na(rs09hrs5_20)]<-0
rs10hrs5_20<-with(rs10hrs5_20,tapply(plotid,list(plotid,interval), length))
rs10hrs5_20[is.na(rs10hrs5_20)]<-0
rs11hrs5_20<-with(rs11hrs5_20,tapply(plotid,list(plotid,interval), length))
rs11hrs5_20[is.na(rs11hrs5_20)]<-0
rs12hrs5_20<-with(rs12hrs5_20,tapply(plotid,list(plotid,interval), length))
rs12hrs5_20[is.na(rs12hrs5_20)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs5_20<-as.data.frame(rowSums((rs04hrs5_20 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
rs05hrs5_20<-as.data.frame(rowSums((rs05hrs5_20 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
rs06hrs5_20<-as.data.frame(rowSums((rs06hrs5_20 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
rs07hrs5_20<-as.data.frame(rowSums((rs07hrs5_20 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
rs08hrs5_20<-as.data.frame(rowSums((rs08hrs5_20 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
rs09hrs5_20<-as.data.frame(rowSums((rs09hrs5_20 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
rs10hrs5_20<-as.data.frame(rowSums((rs10hrs5_20 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
rs11hrs5_20<-as.data.frame(rowSums((rs11hrs5_20 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv(
rs12hrs5_20<-as.data.frame(rowSums((rs12hrs5_20 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs5_20<-cbind(rs04hrs5_20,rs05hrs5_20,rs06hrs5_20,rs07hrs5_20,
                  rs08hrs5_20,rs09hrs5_20,rs10hrs5_20,rs11hrs5_20,
                  rs12hrs5_20)
rm(rs04hrs5_20,rs05hrs5_20,rs06hrs5_20,rs07hrs5_20,
   rs08hrs5_20,rs09hrs5_20,rs10hrs5_20,rs11hrs5_20,
   rs12hrs5_20)

# myNames variable is recycled
myNames<-c("rs04hrs5_20","rs05hrs5_20","rs06hrs5_20","rs07hrs5_20",
           "rs08hrs5_20","rs09hrs5_20","rs10hrs5_20","rs11hrs5_20",
           "rs12hrs5_20")
names(rshrs5_20)<-myNames

#####
# Temperature range 8-16 C
#####
rs04hrs8_16<-subset(rs04,(tempc>=8 & tempc<=16))
rs05hrs8_16<-subset(rs05,(tempc>=8 & tempc<=16))
rs06hrs8_16<-subset(rs06,(tempc>=8 & tempc<=16))
rs07hrs8_16<-subset(rs07,(tempc>=8 & tempc<=16))
rs08hrs8_16<-subset(rs08,(tempc>=8 & tempc<=16))
rs09hrs8_16<-subset(rs09,(tempc>=8 & tempc<=16))
rs10hrs8_16<-subset(rs10,(tempc>=8 & tempc<=16))
rs11hrs8_16<-subset(rs11,(tempc>=8 & tempc<=16))
rs12hrs8_16<-subset(rs12,(tempc>=8 & tempc<=16))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs8_16<-with(rs04hrs8_16,tapply(plotid,list(plotid,interval), length))
rs04hrs8_16[is.na(rs04hrs8_16)]<-0
rs05hrs8_16<-with(rs05hrs8_16,tapply(plotid,list(plotid,interval), length))
rs05hrs8_16[is.na(rs05hrs8_16)]<-0
rs06hrs8_16<-with(rs06hrs8_16,tapply(plotid,list(plotid,interval), length))
rs06hrs8_16[is.na(rs06hrs8_16)]<-0
rs07hrs8_16<-with(rs07hrs8_16,tapply(plotid,list(plotid,interval), length))
rs07hrs8_16[is.na(rs07hrs8_16)]<-0
rs08hrs8_16<-with(rs08hrs8_16,tapply(plotid,list(plotid,interval), length))
rs08hrs8_16[is.na(rs08hrs8_16)]<-0
rs09hrs8_16<-with(rs09hrs8_16,tapply(plotid,list(plotid,interval), length))
rs09hrs8_16[is.na(rs09hrs8_16)]<-0
rs10hrs8_16<-with(rs10hrs8_16,tapply(plotid,list(plotid,interval), length))
rs10hrs8_16[is.na(rs10hrs8_16)]<-0
rs11hrs8_16<-with(rs11hrs8_16,tapply(plotid,list(plotid,interval), length))
rs11hrs8_16[is.na(rs11hrs8_16)]<-0
rs12hrs8_16<-with(rs12hrs8_16,tapply(plotid,list(plotid,interval), length))
rs12hrs8_16[is.na(rs12hrs8_16)]<-0

### Writes the sum of values converted to hours for each row (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs8_16<-as.data.frame(rowSums((rs04hrs8_16 %*% hourConvs),na.rm=T))#),"rs04opthrs.csv")
#write.csv((
rs05hrs8_16<-as.data.frame(rowSums((rs05hrs8_16 %*% hourConvs),na.rm=T))#),"rs05opthrs.csv")
#write.csv((
rs06hrs8_16<-as.data.frame(rowSums((rs06hrs8_16 %*% hourConvs),na.rm=T))#),"rs06opthrs.csv")
#write.csv((
rs07hrs8_16<-as.data.frame(rowSums((rs07hrs8_16 %*% hourConvs),na.rm=T))#),"rs07opthrs.csv")
#write.csv((
rs08hrs8_16<-as.data.frame(rowSums((rs08hrs8_16 %*% hourConvs),na.rm=T))#),"rs08opthrs.csv")
#write.csv((
rs09hrs8_16<-as.data.frame(rowSums((rs09hrs8_16 %*% hourConvs),na.rm=T))#),"rs09opthrs.csv")
#write.csv((
rs10hrs8_16<-as.data.frame(rowSums((rs10hrs8_16 %*% hourConvs),na.rm=T))#),"rs10opthrs.csv")
#write.csv((
rs11hrs8_16<-as.data.frame(rowSums((rs11hrs8_16 %*% hourConvs),na.rm=T))#),"rs11opthrs.csv")
#write.csv((
rs12hrs8_16<-as.data.frame(rowSums((rs12hrs8_16 %*% hourConvs),na.rm=T))#),"rs12opthrs.csv")

rshrs8_16<-cbind(rs04hrs8_16,rs05hrs8_16,rs06hrs8_16,rs07hrs8_16,
                 rs08hrs8_16,rs09hrs8_16,rs10hrs8_16,rs11hrs8_16,
                 rs12hrs8_16)

rm(rs04hrs8_16,rs05hrs8_16,rs06hrs8_16,rs07hrs8_16,
   rs08hrs8_16,rs09hrs8_16,rs10hrs8_16,rs11hrs8_16,
   rs12hrs8_16)

myNames<-c("rs04hrs8_16","rs05hrs8_16","rs06hrs8_16","rs07hrs8_16",
           "rs08hrs8_16","rs09hrs8_16","rs10hrs8_16","rs11hrs8_16",
           "rs12hrs8_16")
names(rshrs8_16)<-myNames

### Rainy season hours low thresholds 0, 4, 5, 8, 10
#####

# Rainy season hours below 0, 4, 5, 8, 10
# "low" temperature thresholds
#####
rs04hrs0<-subset(rs04,(tempc<0))
rs05hrs0<-subset(rs05,(tempc<0))
rs06hrs0<-subset(rs06,(tempc<0))
rs07hrs0<-subset(rs07,(tempc<0))
rs08hrs0<-subset(rs08,(tempc<0))
rs09hrs0<-subset(rs09,(tempc<0))
rs10hrs0<-subset(rs10,(tempc<0))
rs11hrs0<-subset(rs11,(tempc<0))
rs12hrs0<-subset(rs12,(tempc<0))

rs04hrs4<-subset(rs04,(tempc<4))
rs05hrs4<-subset(rs05,(tempc<4))
rs06hrs4<-subset(rs06,(tempc<4))
rs07hrs4<-subset(rs07,(tempc<4))
rs08hrs4<-subset(rs08,(tempc<4))
rs09hrs4<-subset(rs09,(tempc<4))
rs10hrs4<-subset(rs10,(tempc<4))
rs11hrs4<-subset(rs11,(tempc<4))
rs12hrs4<-subset(rs12,(tempc<4))

rs04hrs5<-subset(rs04,(tempc<5))
rs05hrs5<-subset(rs05,(tempc<5))
rs06hrs5<-subset(rs06,(tempc<5))
rs07hrs5<-subset(rs07,(tempc<5))
rs08hrs5<-subset(rs08,(tempc<5))
rs09hrs5<-subset(rs09,(tempc<5))
rs10hrs5<-subset(rs10,(tempc<5))
rs11hrs5<-subset(rs11,(tempc<5))
rs12hrs5<-subset(rs12,(tempc<5))

rs04hrs8<-subset(rs04,(tempc<8))
rs05hrs8<-subset(rs05,(tempc<8))
rs06hrs8<-subset(rs06,(tempc<8))
rs07hrs8<-subset(rs07,(tempc<8))
rs08hrs8<-subset(rs08,(tempc<8))
rs09hrs8<-subset(rs09,(tempc<8))
rs10hrs8<-subset(rs10,(tempc<8))
rs11hrs8<-subset(rs11,(tempc<8))
rs12hrs8<-subset(rs12,(tempc<8))

rs04hrs10<-subset(rs04,(tempc<10))
rs05hrs10<-subset(rs05,(tempc<10))
rs06hrs10<-subset(rs06,(tempc<10))
rs07hrs10<-subset(rs07,(tempc<10))
rs08hrs10<-subset(rs08,(tempc<10))
rs09hrs10<-subset(rs09,(tempc<10))
rs10hrs10<-subset(rs10,(tempc<10))
rs11hrs10<-subset(rs11,(tempc<10))
rs12hrs10<-subset(rs12,(tempc<10))

### Split into number of records in each interval category by plot with
### NA as zeroes
rs04hrs0<-with(rs04hrs0,tapply(plotid,list(plotid,interval), length))
rs04hrs0[is.na(rs04hrs0)]<-0
rs05hrs0<-with(rs05hrs0,tapply(plotid,list(plotid,interval), length))
rs05hrs0[is.na(rs05hrs0)]<-0
rs06hrs0<-with(rs06hrs0,tapply(plotid,list(plotid,interval), length))
rs06hrs0[is.na(rs06hrs0)]<-0
rs07hrs0<-with(rs07hrs0,tapply(plotid,list(plotid,interval), length))
rs07hrs0[is.na(rs07hrs0)]<-0
rs08hrs0<-with(rs08hrs0,tapply(plotid,list(plotid,interval), length))
rs08hrs0[is.na(rs08hrs0)]<-0
rs09hrs0<-with(rs09hrs0,tapply(plotid,list(plotid,interval), length))
rs09hrs0[is.na(rs09hrs0)]<-0
rs10hrs0<-with(rs10hrs0,tapply(plotid,list(plotid,interval), length))
rs10hrs0[is.na(rs10hrs0)]<-0
rs11hrs0<-with(rs11hrs0,tapply(plotid,list(plotid,interval), length))
rs11hrs0[is.na(rs11hrs0)]<-0
rs12hrs0<-with(rs12hrs0,tapply(plotid,list(plotid,interval), length))
rs12hrs0[is.na(rs12hrs0)]<-0

rs04hrs4<-with(rs04hrs4,tapply(plotid,list(plotid,interval), length))
rs04hrs4[is.na(rs04hrs4)]<-0
rs05hrs4<-with(rs05hrs4,tapply(plotid,list(plotid,interval), length))
rs05hrs4[is.na(rs05hrs4)]<-0
rs06hrs4<-with(rs06hrs4,tapply(plotid,list(plotid,interval), length))
rs06hrs4[is.na(rs06hrs4)]<-0
rs07hrs4<-with(rs07hrs4,tapply(plotid,list(plotid,interval), length))
rs07hrs4[is.na(rs07hrs4)]<-0
rs08hrs4<-with(rs08hrs4,tapply(plotid,list(plotid,interval), length))
rs08hrs4[is.na(rs08hrs4)]<-0
rs09hrs4<-with(rs09hrs4,tapply(plotid,list(plotid,interval), length))
rs09hrs4[is.na(rs09hrs4)]<-0
rs10hrs4<-with(rs10hrs4,tapply(plotid,list(plotid,interval), length))
rs10hrs4[is.na(rs10hrs4)]<-0
rs11hrs4<-with(rs11hrs4,tapply(plotid,list(plotid,interval), length))
rs11hrs4[is.na(rs11hrs4)]<-0
rs12hrs4<-with(rs12hrs4,tapply(plotid,list(plotid,interval), length))
rs12hrs4[is.na(rs12hrs4)]<-0

rs04hrs5<-with(rs04hrs5,tapply(plotid,list(plotid,interval), length))
rs04hrs5[is.na(rs04hrs5)]<-0
rs05hrs5<-with(rs05hrs5,tapply(plotid,list(plotid,interval), length))
rs05hrs5[is.na(rs05hrs5)]<-0
rs06hrs5<-with(rs06hrs5,tapply(plotid,list(plotid,interval), length))
rs06hrs5[is.na(rs06hrs5)]<-0
rs07hrs5<-with(rs07hrs5,tapply(plotid,list(plotid,interval), length))
rs07hrs5[is.na(rs07hrs5)]<-0
rs08hrs5<-with(rs08hrs5,tapply(plotid,list(plotid,interval), length))
rs08hrs5[is.na(rs08hrs5)]<-0
rs09hrs5<-with(rs09hrs5,tapply(plotid,list(plotid,interval), length))
rs09hrs5[is.na(rs09hrs5)]<-0
rs10hrs5<-with(rs10hrs5,tapply(plotid,list(plotid,interval), length))
rs10hrs5[is.na(rs10hrs5)]<-0
rs11hrs5<-with(rs11hrs5,tapply(plotid,list(plotid,interval), length))
rs11hrs5[is.na(rs11hrs5)]<-0
rs12hrs5<-with(rs12hrs5,tapply(plotid,list(plotid,interval), length))
rs12hrs5[is.na(rs12hrs5)]<-0

rs04hrs8<-with(rs04hrs8,tapply(plotid,list(plotid,interval), length))
rs04hrs8[is.na(rs04hrs8)]<-0
rs05hrs8<-with(rs05hrs8,tapply(plotid,list(plotid,interval), length))
rs05hrs8[is.na(rs05hrs8)]<-0
rs06hrs8<-with(rs06hrs8,tapply(plotid,list(plotid,interval), length))
rs06hrs8[is.na(rs06hrs8)]<-0
rs07hrs8<-with(rs07hrs8,tapply(plotid,list(plotid,interval), length))
rs07hrs8[is.na(rs07hrs8)]<-0
rs08hrs8<-with(rs08hrs8,tapply(plotid,list(plotid,interval), length))
rs08hrs8[is.na(rs08hrs8)]<-0
rs09hrs8<-with(rs09hrs8,tapply(plotid,list(plotid,interval), length))
rs09hrs8[is.na(rs09hrs8)]<-0
rs10hrs8<-with(rs10hrs8,tapply(plotid,list(plotid,interval), length))
rs10hrs8[is.na(rs10hrs8)]<-0
rs11hrs8<-with(rs11hrs8,tapply(plotid,list(plotid,interval), length))
rs11hrs8[is.na(rs11hrs8)]<-0
rs12hrs8<-with(rs12hrs8,tapply(plotid,list(plotid,interval), length))
rs12hrs8[is.na(rs12hrs8)]<-0

rs04hrs10<-with(rs04hrs10,tapply(plotid,list(plotid,interval), length))
rs04hrs10[is.na(rs04hrs10)]<-0
rs05hrs10<-with(rs05hrs10,tapply(plotid,list(plotid,interval), length))
rs05hrs10[is.na(rs05hrs10)]<-0
rs06hrs10<-with(rs06hrs10,tapply(plotid,list(plotid,interval), length))
rs06hrs10[is.na(rs06hrs10)]<-0
rs07hrs10<-with(rs07hrs10,tapply(plotid,list(plotid,interval), length))
rs07hrs10[is.na(rs07hrs10)]<-0
rs08hrs10<-with(rs08hrs10,tapply(plotid,list(plotid,interval), length))
rs08hrs10[is.na(rs08hrs10)]<-0
rs09hrs10<-with(rs09hrs10,tapply(plotid,list(plotid,interval), length))
rs09hrs10[is.na(rs09hrs10)]<-0
rs10hrs10<-with(rs10hrs10,tapply(plotid,list(plotid,interval), length))
rs10hrs10[is.na(rs10hrs10)]<-0
rs11hrs10<-with(rs11hrs10,tapply(plotid,list(plotid,interval), length))
rs11hrs10[is.na(rs11hrs10)]<-0
rs12hrs10<-with(rs12hrs10,tapply(plotid,list(plotid,interval), length))
rs12hrs10[is.na(rs12hrs10)]<-0

### Writes the sum of values converted to hours for each row 
### (i.e. plot id) from the interval file to a csv
#write.csv((
rs04hrs0<-as.data.frame(rowSums((rs04hrs0 %*% hourConvs),na.rm=T))#),"rs04lowhrs.csv")
#write.csv((
rs05hrs0<-as.data.frame(rowSums((rs05hrs0 %*% hourConvs),na.rm=T))#),"rs05lowhrs.csv")
#write.csv((
rs06hrs0<-as.data.frame(rowSums((rs06hrs0 %*% hourConvs),na.rm=T))#),"rs06lowhrs.csv")
#write.csv((
rs07hrs0<-as.data.frame(rowSums((rs07hrs0 %*% hourConvs),na.rm=T))#),"rs07lowhrs.csv")
#write.csv((
rs08hrs0<-as.data.frame(rowSums((rs08hrs0 %*% hourConvs),na.rm=T))#),"rs08lowhrs.csv")
#write.csv((
rs09hrs0<-as.data.frame(rowSums((rs09hrs0 %*% hourConvs),na.rm=T))#),"rs09lowhrs.csv")
#write.csv((
rs10hrs0<-as.data.frame(rowSums((rs10hrs0 %*% hourConvs),na.rm=T))#),"rs10lowhrs.csv")
#write.csv((
rs11hrs0<-as.data.frame(rowSums((rs11hrs0 %*% hourConvs),na.rm=T))#),"rs11lowhrs.csv")
#write.csv((
rs12hrs0<-as.data.frame(rowSums((rs12hrs0 %*% hourConvs),na.rm=T))#),"rs12lowhrs.csv")

rshrsBelow0<-cbind(rs04hrs0,rs05hrs0,rs06hrs0,rs07hrs0,rs08hrs0,rs09hrs0,
              rs10hrs0,rs11hrs0,rs12hrs0)
rm(rs04hrs0,rs05hrs0,rs06hrs0,rs07hrs0,rs08hrs0,rs09hrs0,
   rs10hrs0,rs11hrs0,rs12hrs0)
myNames<-c("rs04hrsBelow0","rs05hrsBelow0","rs06hrsBelow0","rs07hrsBelow0","rs08hrsBelow0",
           "rs09hrsBelow0","rs10hrsBelow0","rs11hrsBelow0","rs12hrsBelow0")
names(rshrsBelow0)<-myNames

#write.csv((
  rs04hrs4<-as.data.frame(rowSums((rs04hrs4 %*% hourConvs),na.rm=T))#),"rs04lowhrs.csv")
#write.csv((
  rs05hrs4<-as.data.frame(rowSums((rs05hrs4 %*% hourConvs),na.rm=T))#),"rs05lowhrs.csv")
#write.csv((
  rs06hrs4<-as.data.frame(rowSums((rs06hrs4 %*% hourConvs),na.rm=T))#),"rs06lowhrs.csv")
#write.csv((
  rs07hrs4<-as.data.frame(rowSums((rs07hrs4 %*% hourConvs),na.rm=T))#),"rs07lowhrs.csv")
#write.csv((
  rs08hrs4<-as.data.frame(rowSums((rs08hrs4 %*% hourConvs),na.rm=T))#),"rs08lowhrs.csv")
#write.csv((
  rs09hrs4<-as.data.frame(rowSums((rs09hrs4 %*% hourConvs),na.rm=T))#),"rs09lowhrs.csv")
#write.csv((
  rs10hrs4<-as.data.frame(rowSums((rs10hrs4 %*% hourConvs),na.rm=T))#),"rs10lowhrs.csv")
#write.csv((
  rs11hrs4<-as.data.frame(rowSums((rs11hrs4 %*% hourConvs),na.rm=T))#),"rs11lowhrs.csv")
#write.csv((
  rs12hrs4<-as.data.frame(rowSums((rs12hrs4 %*% hourConvs),na.rm=T))#),"rs12lowhrs.csv")

rshrsBelow4<-cbind(rs04hrs4,rs05hrs4,rs06hrs4,rs07hrs4,rs08hrs4,rs09hrs4,
              rs10hrs4,rs11hrs4,rs12hrs4)
rm(rs04hrs4,rs05hrs4,rs06hrs4,rs07hrs4,rs08hrs4,rs09hrs4,
   rs10hrs4,rs11hrs4,rs12hrs4)
myNames<-c("rs04hrsBelow4","rs05hrsBelow4","rs06hrsBelow4","rs07hrsBelow4","rs08hrsBelow4",
           "rs09hrsBelow4","rs10hrsBelow4","rs11hrsBelow4","rs12hrsBelow4")
names(rshrsBelow4)<-myNames

#write.csv((
rs04hrs5<-as.data.frame(rowSums((rs04hrs5 %*% hourConvs),na.rm=T))#),"rs04lowhrs.csv")
#write.csv((
rs05hrs5<-as.data.frame(rowSums((rs05hrs5 %*% hourConvs),na.rm=T))#),"rs05lowhrs.csv")
#write.csv((
rs06hrs5<-as.data.frame(rowSums((rs06hrs5 %*% hourConvs),na.rm=T))#),"rs06lowhrs.csv")
#write.csv((
rs07hrs5<-as.data.frame(rowSums((rs07hrs5 %*% hourConvs),na.rm=T))#),"rs07lowhrs.csv")
#write.csv((
rs08hrs5<-as.data.frame(rowSums((rs08hrs5 %*% hourConvs),na.rm=T))#),"rs08lowhrs.csv")
#write.csv((
rs09hrs5<-as.data.frame(rowSums((rs09hrs5 %*% hourConvs),na.rm=T))#),"rs09lowhrs.csv")
#write.csv((
rs10hrs5<-as.data.frame(rowSums((rs10hrs5 %*% hourConvs),na.rm=T))#),"rs10lowhrs.csv")
#write.csv((
rs11hrs5<-as.data.frame(rowSums((rs11hrs5 %*% hourConvs),na.rm=T))#),"rs11lowhrs.csv")
#write.csv((
rs12hrs5<-as.data.frame(rowSums((rs12hrs5 %*% hourConvs),na.rm=T))#),"rs12lowhrs.csv")

rshrsBelow5<-cbind(rs04hrs5,rs05hrs5,rs06hrs5,rs07hrs5,rs08hrs5,rs09hrs5,
              rs10hrs5,rs11hrs5,rs12hrs5)
rm(rs04hrs5,rs05hrs5,rs06hrs5,rs07hrs5,rs08hrs5,rs09hrs5,
   rs10hrs5,rs11hrs5,rs12hrs5)
myNames<-c("rs04hrsBelow5","rs05hrsBelow5","rs06hrsBelow5","rs07hrsBelow5","rs08hrsBelow5",
          "rs09hrsBelow5","rs10hrsBelow5","rs11hrsBelow5","rs12hrsBelow5")
names(rshrsBelow5)<-myNames


#write.csv((
rs04hrs8<-as.data.frame(rowSums((rs04hrs8 %*% hourConvs),na.rm=T))#),"rs04lowhrs.csv")
#write.csv((
rs05hrs8<-as.data.frame(rowSums((rs05hrs8 %*% hourConvs),na.rm=T))#),"rs05lowhrs.csv")
#write.csv((
rs06hrs8<-as.data.frame(rowSums((rs06hrs8 %*% hourConvs),na.rm=T))#),"rs06lowhrs.csv")
#write.csv((
rs07hrs8<-as.data.frame(rowSums((rs07hrs8 %*% hourConvs),na.rm=T))#),"rs07lowhrs.csv")
#write.csv((
rs08hrs8<-as.data.frame(rowSums((rs08hrs8 %*% hourConvs),na.rm=T))#),"rs08lowhrs.csv")
#write.csv((
rs09hrs8<-as.data.frame(rowSums((rs09hrs8 %*% hourConvs),na.rm=T))#),"rs09lowhrs.csv")
#write.csv((
rs10hrs8<-as.data.frame(rowSums((rs10hrs8 %*% hourConvs),na.rm=T))#),"rs10lowhrs.csv")
#write.csv((
rs11hrs8<-as.data.frame(rowSums((rs11hrs8 %*% hourConvs),na.rm=T))#),"rs11lowhrs.csv")
#write.csv((
rs12hrs8<-as.data.frame(rowSums((rs12hrs8 %*% hourConvs),na.rm=T))#),"rs12lowhrs.csv")

rshrs8<-cbind(rs04hrs8,rs05hrs8,rs06hrs8,rs07hrs8,rs08hrs8,
              rs09hrs8,rs10hrs8,rs11hrs8,rs12hrs8)
rm(rs04hrs8,rs05hrs8,rs06hrs8,rs07hrs8,rs08hrs8,
   rs09hrs8,rs10hrs8,rs11hrs8,rs12hrs8)
myNames<-c("rs04hrsBelow8","rs05hrsBelow8","rs06hrsBelow8","rs07hrsBelow8","rs08hrsBelow8",
          "rs09hrsBelow8","rs10hrsBelow8","rs11hrsBelow8","rs12hrsBelow8")
names(rshrs8)<-myNames
rshrsBelow8<-rshrs8
rm(rshrs8)
#write.csv((
rs04hrs10<-as.data.frame(rowSums((rs04hrs10 %*% hourConvs),na.rm=T))#),"rs04lowhrs.csv")
#write.csv((
rs05hrs10<-as.data.frame(rowSums((rs05hrs10 %*% hourConvs),na.rm=T))#),"rs05lowhrs.csv")
#write.csv((
rs06hrs10<-as.data.frame(rowSums((rs06hrs10 %*% hourConvs),na.rm=T))#),"rs06lowhrs.csv")
#write.csv((
rs07hrs10<-as.data.frame(rowSums((rs07hrs10 %*% hourConvs),na.rm=T))#),"rs07lowhrs.csv")
#write.csv((
rs08hrs10<-as.data.frame(rowSums((rs08hrs10 %*% hourConvs),na.rm=T))#),"rs08lowhrs.csv")
#write.csv((
rs09hrs10<-as.data.frame(rowSums((rs09hrs10 %*% hourConvs),na.rm=T))#),"rs09lowhrs.csv")
#write.csv((
rs10hrs10<-as.data.frame(rowSums((rs10hrs10 %*% hourConvs),na.rm=T))#),"rs10lowhrs.csv")
#write.csv((
rs11hrs10<-as.data.frame(rowSums((rs11hrs10 %*% hourConvs),na.rm=T))#),"rs11lowhrs.csv")
#write.csv((
rs12hrs10<-as.data.frame(rowSums((rs12hrs10 %*% hourConvs),na.rm=T))#),"rs12lowhrs.csv")

rshrs10<-cbind(rs04hrs10,rs05hrs10,rs06hrs10,rs07hrs10,rs08hrs10,
               rs09hrs10,rs10hrs10,rs11hrs10,rs12hrs10)
rm(rs04hrs10,rs05hrs10,rs06hrs10,rs07hrs10,rs08hrs10,
   rs09hrs10,rs10hrs10,rs11hrs10,rs12hrs10)
myNames<-c("rs04hrsBelow10","rs05hrsBelow10","rs06hrsBelow10","rs07hrsBelow10","rs08hrsBelow10",
           "rs09hrsBelow10","rs10hrsBelow10","rs11hrsBelow10","rs12hrsBelow10")
names(rshrs10)<-myNames
rshrsBelow10<-rshrs10
rm(rshrs10)
#####

### Rainy season hours above 30 C, 26 C, 22 C, 18 C 
### "high" temperature thresholds
#####
rs04hrs30<-subset(rs04,(tempc>30))
rs05hrs30<-subset(rs05,(tempc>30))
rs06hrs30<-subset(rs06,(tempc>30))
rs07hrs30<-subset(rs07,(tempc>30))
rs08hrs30<-subset(rs08,(tempc>30))
rs09hrs30<-subset(rs09,(tempc>30))
rs10hrs30<-subset(rs10,(tempc>30))
rs11hrs30<-subset(rs11,(tempc>30))
rs12hrs30<-subset(rs12,(tempc>30))

rs04hrs26<-subset(rs04,(tempc>26))
rs05hrs26<-subset(rs05,(tempc>26))
rs06hrs26<-subset(rs06,(tempc>26))
rs07hrs26<-subset(rs07,(tempc>26))
rs08hrs26<-subset(rs08,(tempc>26))
rs09hrs26<-subset(rs09,(tempc>26))
rs10hrs26<-subset(rs10,(tempc>26))
rs11hrs26<-subset(rs11,(tempc>26))
rs12hrs26<-subset(rs12,(tempc>26))

rs04hrs22<-subset(rs04,(tempc>22))
rs05hrs22<-subset(rs05,(tempc>22))
rs06hrs22<-subset(rs06,(tempc>22))
rs07hrs22<-subset(rs07,(tempc>22))
rs08hrs22<-subset(rs08,(tempc>22))
rs09hrs22<-subset(rs09,(tempc>22))
rs10hrs22<-subset(rs10,(tempc>22))
rs11hrs22<-subset(rs11,(tempc>22))
rs12hrs22<-subset(rs12,(tempc>22))

rs04hrs18<-subset(rs04,(tempc>18))
rs05hrs18<-subset(rs05,(tempc>18))
rs06hrs18<-subset(rs06,(tempc>18))
rs07hrs18<-subset(rs07,(tempc>18))
rs08hrs18<-subset(rs08,(tempc>18))
rs09hrs18<-subset(rs09,(tempc>18))
rs10hrs18<-subset(rs10,(tempc>18))
rs11hrs18<-subset(rs11,(tempc>18))
rs12hrs18<-subset(rs12,(tempc>18))

### Split into number of records in each interval category by plot with NA as zeroes
rs04hrs30<-with(rs04hrs30,tapply(plotid,list(plotid,interval), length))
rs04hrs30[is.na(rs04hrs30)]<-0
rs05hrs30<-with(rs05hrs30,tapply(plotid,list(plotid,interval), length))
rs05hrs30[is.na(rs05hrs30)]<-0
rs06hrs30<-with(rs06hrs30,tapply(plotid,list(plotid,interval), length))
rs06hrs30[is.na(rs06hrs30)]<-0
rs07hrs30<-with(rs07hrs30,tapply(plotid,list(plotid,interval), length))
rs07hrs30[is.na(rs07hrs30)]<-0
rs08hrs30<-with(rs08hrs30,tapply(plotid,list(plotid,interval), length))
rs08hrs30[is.na(rs08hrs30)]<-0
rs09hrs30<-with(rs09hrs30,tapply(plotid,list(plotid,interval), length))
rs09hrs30[is.na(rs09hrs30)]<-0
rs10hrs30<-with(rs10hrs30,tapply(plotid,list(plotid,interval), length))
rs10hrs30[is.na(rs10hrs30)]<-0
rs11hrs30<-with(rs11hrs30,tapply(plotid,list(plotid,interval), length))
rs11hrs30[is.na(rs11hrs30)]<-0
rs12hrs30<-with(rs12hrs30,tapply(plotid,list(plotid,interval), length))
rs12hrs30[is.na(rs12hrs30)]<-0

rs04hrs26<-with(rs04hrs26,tapply(plotid,list(plotid,interval), length))
rs04hrs26[is.na(rs04hrs26)]<-0
rs05hrs26<-with(rs05hrs26,tapply(plotid,list(plotid,interval), length))
rs05hrs26[is.na(rs05hrs26)]<-0
rs06hrs26<-with(rs06hrs26,tapply(plotid,list(plotid,interval), length))
rs06hrs26[is.na(rs06hrs26)]<-0
rs07hrs26<-with(rs07hrs26,tapply(plotid,list(plotid,interval), length))
rs07hrs26[is.na(rs07hrs26)]<-0
rs08hrs26<-with(rs08hrs26,tapply(plotid,list(plotid,interval), length))
rs08hrs26[is.na(rs08hrs26)]<-0
rs09hrs26<-with(rs09hrs26,tapply(plotid,list(plotid,interval), length))
rs09hrs26[is.na(rs09hrs26)]<-0
rs10hrs26<-with(rs10hrs26,tapply(plotid,list(plotid,interval), length))
rs10hrs26[is.na(rs10hrs26)]<-0
rs11hrs26<-with(rs11hrs26,tapply(plotid,list(plotid,interval), length))
rs11hrs26[is.na(rs11hrs26)]<-0
rs12hrs26<-with(rs12hrs26,tapply(plotid,list(plotid,interval), length))
rs12hrs26[is.na(rs12hrs26)]<-0

rs04hrs22<-with(rs04hrs22,tapply(plotid,list(plotid,interval), length))
rs04hrs22[is.na(rs04hrs22)]<-0
rs05hrs22<-with(rs05hrs22,tapply(plotid,list(plotid,interval), length))
rs05hrs22[is.na(rs05hrs22)]<-0
rs06hrs22<-with(rs06hrs22,tapply(plotid,list(plotid,interval), length))
rs06hrs22[is.na(rs06hrs22)]<-0
rs07hrs22<-with(rs07hrs22,tapply(plotid,list(plotid,interval), length))
rs07hrs22[is.na(rs07hrs22)]<-0
rs08hrs22<-with(rs08hrs22,tapply(plotid,list(plotid,interval), length))
rs08hrs22[is.na(rs08hrs22)]<-0
rs09hrs22<-with(rs09hrs22,tapply(plotid,list(plotid,interval), length))
rs09hrs22[is.na(rs09hrs22)]<-0
rs10hrs22<-with(rs10hrs22,tapply(plotid,list(plotid,interval), length))
rs10hrs22[is.na(rs10hrs22)]<-0
rs11hrs22<-with(rs11hrs22,tapply(plotid,list(plotid,interval), length))
rs11hrs22[is.na(rs11hrs22)]<-0
rs12hrs22<-with(rs12hrs22,tapply(plotid,list(plotid,interval), length))
rs12hrs22[is.na(rs12hrs22)]<-0

rs04hrs18<-with(rs04hrs18,tapply(plotid,list(plotid,interval), length))
rs04hrs18[is.na(rs04hrs18)]<-0
rs05hrs18<-with(rs05hrs18,tapply(plotid,list(plotid,interval), length))
rs05hrs18[is.na(rs05hrs18)]<-0
rs06hrs18<-with(rs06hrs18,tapply(plotid,list(plotid,interval), length))
rs06hrs18[is.na(rs06hrs18)]<-0
rs07hrs18<-with(rs07hrs18,tapply(plotid,list(plotid,interval), length))
rs07hrs18[is.na(rs07hrs18)]<-0
rs08hrs18<-with(rs08hrs18,tapply(plotid,list(plotid,interval), length))
rs08hrs18[is.na(rs08hrs18)]<-0
rs09hrs18<-with(rs09hrs18,tapply(plotid,list(plotid,interval), length))
rs09hrs18[is.na(rs09hrs18)]<-0
rs10hrs18<-with(rs10hrs18,tapply(plotid,list(plotid,interval), length))
rs10hrs18[is.na(rs10hrs18)]<-0
rs11hrs18<-with(rs11hrs18,tapply(plotid,list(plotid,interval), length))
rs11hrs18[is.na(rs11hrs18)]<-0
rs12hrs18<-with(rs12hrs18,tapply(plotid,list(plotid,interval), length))
rs12hrs18[is.na(rs12hrs18)]<-0

### Convert to counts of hours for each temperature category
#write.csv((
rs04hrs30<-as.data.frame(rowSums((rs04hrs30 %*% hourConvs),na.rm=T))#),"rs04hrs26.csv")
#write.csv((
rs05hrs30<-as.data.frame(rowSums((rs05hrs30 %*% hourConvs),na.rm=T))#),"rs05hrs26.csv")
#write.csv((
rs06hrs30<-as.data.frame(rowSums((rs06hrs30 %*% hourConvs),na.rm=T))#),"rs06hrs26.csv")
#write.csv((
rs07hrs30<-as.data.frame(rowSums((rs07hrs30 %*% hourConvs),na.rm=T))#),"rs07hrs26.csv")
#write.csv((
rs08hrs30<-as.data.frame(rowSums((rs08hrs30 %*% hourConvs),na.rm=T))#),"rs08hrs26.csv")
#write.csv((
rs09hrs30<-as.data.frame(rowSums((rs09hrs30 %*% hourConvs),na.rm=T))#),"rs09hrs26.csv")
#write.csv((
rs10hrs30<-as.data.frame(rowSums((rs10hrs30 %*% hourConvs),na.rm=T))#),"rs10hrs26.csv")
#write.csv((
rs11hrs30<-as.data.frame(rowSums((rs11hrs30 %*% hourConvs),na.rm=T))#),"rs11hrs26.csv")
#write.csv((
rs12hrs30<-as.data.frame(rowSums((rs12hrs30 %*% hourConvs),na.rm=T))#),"rs12hrs26.csv")

rshrs30<-cbind(rs04hrs30,rs05hrs30,rs06hrs30,rs07hrs30,rs08hrs30,
               rs09hrs30,rs10hrs30,rs11hrs30,rs12hrs30)
rm(rs04hrs30,rs05hrs30,rs06hrs30,rs07hrs30,rs08hrs30,
   rs09hrs30,rs10hrs30,rs11hrs30,rs12hrs30)
myNames<-c("rs04hrsAbove30","rs05hrsAbove30","rs06hrsAbove30","rs07hrsAbove30","rs08hrsAbove30",
           "rs09hrsAbove30","rs10hrsAbove30","rs11hrsAbove30","rs12hrsAbove30")
names(rshrs30)<-myNames
rshrsAbove30<-rshrs30
rm(rshrs30)

#write.csv((
  rs04hrs26<-as.data.frame(rowSums((rs04hrs26 %*% hourConvs),na.rm=T))#),"rs04hrs26.csv")
#write.csv((
  rs05hrs26<-as.data.frame(rowSums((rs05hrs26 %*% hourConvs),na.rm=T))#),"rs05hrs26.csv")
#write.csv((
  rs06hrs26<-as.data.frame(rowSums((rs06hrs26 %*% hourConvs),na.rm=T))#),"rs06hrs26.csv")
#write.csv((
  rs07hrs26<-as.data.frame(rowSums((rs07hrs26 %*% hourConvs),na.rm=T))#),"rs07hrs26.csv")
#write.csv((
  rs08hrs26<-as.data.frame(rowSums((rs08hrs26 %*% hourConvs),na.rm=T))#),"rs08hrs26.csv")
#write.csv((
  rs09hrs26<-as.data.frame(rowSums((rs09hrs26 %*% hourConvs),na.rm=T))#),"rs09hrs26.csv")
#write.csv((
  rs10hrs26<-as.data.frame(rowSums((rs10hrs26 %*% hourConvs),na.rm=T))#),"rs10hrs26.csv")
#write.csv((
  rs11hrs26<-as.data.frame(rowSums((rs11hrs26 %*% hourConvs),na.rm=T))#),"rs11hrs26.csv")
#write.csv((
  rs12hrs26<-as.data.frame(rowSums((rs12hrs26 %*% hourConvs),na.rm=T))#),"rs12hrs26.csv")

rshrs26<-cbind(rs04hrs26,rs05hrs26,rs06hrs26,rs07hrs26,rs08hrs26,
               rs09hrs26,rs10hrs26,rs11hrs26,rs12hrs26)
rm(rs04hrs26,rs05hrs26,rs06hrs26,rs07hrs26,rs08hrs26,
   rs09hrs26,rs10hrs26,rs11hrs26,rs12hrs26)
myNames<-c("rs04hrsAbove26","rs05hrsAbove26","rs06hrsAbove26","rs07hrsAbove26","rs08hrsAbove26",
           "rs09hrsAbove26","rs10hrsAbove26","rs11hrsAbove26","rs12hrsAbove26")
names(rshrs26)<-myNames
rshrsAbove26<-rshrs26
rm(rshrs26)

#write.csv((
  rs04hrs22<-as.data.frame(rowSums((rs04hrs22 %*% hourConvs),na.rm=T))#),"rs04hrs22.csv")
#write.csv((
  rs05hrs22<-as.data.frame(rowSums((rs05hrs22 %*% hourConvs),na.rm=T))#),"rs05hrs22.csv")
#write.csv((
  rs06hrs22<-as.data.frame(rowSums((rs06hrs22 %*% hourConvs),na.rm=T))#),"rs06hrs22.csv")
#write.csv((
  rs07hrs22<-as.data.frame(rowSums((rs07hrs22 %*% hourConvs),na.rm=T))#),"rs07hrs22.csv")
#write.csv((
  rs08hrs22<-as.data.frame(rowSums((rs08hrs22 %*% hourConvs),na.rm=T))#),"rs08hrs22.csv")
#write.csv((
  rs09hrs22<-as.data.frame(rowSums((rs09hrs22 %*% hourConvs),na.rm=T))#),"rs09hrs22.csv")
#write.csv((
  rs10hrs22<-as.data.frame(rowSums((rs10hrs22 %*% hourConvs),na.rm=T))#),"rs10hrs22.csv")
#write.csv((
  rs11hrs22<-as.data.frame(rowSums((rs11hrs22 %*% hourConvs),na.rm=T))#),"rs11hrs22.csv")
#write.csv((
  rs12hrs22<-as.data.frame(rowSums((rs12hrs22 %*% hourConvs),na.rm=T))#),"rs12hrs22.csv")

rshrs22<-cbind(rs04hrs22,rs05hrs22,rs06hrs22,rs07hrs22,rs08hrs22,
               rs09hrs22,rs10hrs22,rs11hrs22,rs12hrs22)
rm(rs04hrs22,rs05hrs22,rs06hrs22,rs07hrs22,rs08hrs22,
   rs09hrs22,rs10hrs22,rs11hrs22,rs12hrs22)
myNames<-c("rs04hrsAbove22","rs05hrsAbove22","rs06hrsAbove22","rs07hrsAbove22","rs08hrsAbove22",
        "rs09hrsAbove22","rs10hrsAbove22","rs11hrsAbove22","rs12hrsAbove22")
names(rshrs22)<-myNames
rshrsAbove22<-rshrs22
rm(rshrs22)

#write.csv((
  rs04hrs18<-as.data.frame(rowSums((rs04hrs18 %*% hourConvs),na.rm=T))#),"rs04hrs18.csv")
#write.csv((
  rs05hrs18<-as.data.frame(rowSums((rs05hrs18 %*% hourConvs),na.rm=T))#),"rs05hrs18.csv")
#write.csv((
  rs06hrs18<-as.data.frame(rowSums((rs06hrs18 %*% hourConvs),na.rm=T))#),"rs06hrs18.csv")
#write.csv((
  rs07hrs18<-as.data.frame(rowSums((rs07hrs18 %*% hourConvs),na.rm=T))#),"rs07hrs18.csv")
#write.csv((
  rs08hrs18<-as.data.frame(rowSums((rs08hrs18 %*% hourConvs),na.rm=T))#),"rs08hrs18.csv")
#write.csv((
  rs09hrs18<-as.data.frame(rowSums((rs09hrs18 %*% hourConvs),na.rm=T))#),"rs09hrs18.csv")
#write.csv((
  rs10hrs18<-as.data.frame(rowSums((rs10hrs18 %*% hourConvs),na.rm=T))#),"rs10hrs18.csv")
#write.csv((
  rs11hrs18<-as.data.frame(rowSums((rs11hrs18 %*% hourConvs),na.rm=T))#),"rs11hrs18.csv")
#write.csv((
  rs12hrs18<-as.data.frame(rowSums((rs12hrs18 %*% hourConvs),na.rm=T))#),"rs12hrs18.csv")

rshrs18<-cbind(rs04hrs18,rs05hrs18,rs06hrs18,rs07hrs18,rs08hrs18,
               rs09hrs18,rs10hrs18,rs11hrs18,rs12hrs18)
rm(rs04hrs18,rs05hrs18,rs06hrs18,rs07hrs18,rs08hrs18,
   rs09hrs18,rs10hrs18,rs11hrs18,rs12hrs18)
myNames<-c("rs04hrsAbove18","rs05hrsAbove18","rs06hrsAbove18","rs07hrsAbove18","rs08hrsAbove18",
        "rs09hrsAbove18","rs10hrsAbove18","rs11hrsAbove18","rs12hrsAbove18")
names(rshrs18)<-myNames
rshrsAbove18<-rshrs18
rm(rshrs18)

myNames<-c("rs04hrsAbove30","rs05hrsAbove30","rs06hrsAbove30","rs07hrsAbove30","rs08hrsAbove30",
           "rs09hrsAbove30","rs10hrsAbove30","rs11hrsAbove30","rs12hrsAbove30")
names(rshrs30)<-myNames
rshrsAbove30<-rshrs30
rm(rshrs30)
#####
rsTempVars<-cbind(rshrsBelow0,rshrsBelow4,rshrsBelow5,rshrsBelow8,
                  rshrsBelow10,rshrs5_10,rshrs5_15,rshrs5_20,rshrs8_16,
                  rshrs10_15,rshrs14_26,rshrs15_20,rshrs20_25,
                  rshrsAbove18,rshrsAbove22,rshrsAbove26,rshrsAbove30)

# Get average temperature during the rainy season for each plot, add
# them to the larger one, then write it back to CSV
#####
rs04avg.temp<-as.data.frame(tapply(rs04$temp,rs04$plotid,mean))
names(rs04avg.temp)<-"rs04avgTemp"
rs05avg.temp<-as.data.frame(tapply(rs05$temp,rs05$plotid,mean))
names(rs05avg.temp)<-"rs05avgTemp"
rs06avg.temp<-as.data.frame(tapply(rs06$temp,rs06$plotid,mean))
names(rs06avg.temp)<-"rs06avgTemp"
rs07avg.temp<-as.data.frame(tapply(rs07$temp,rs07$plotid,mean))
names(rs07avg.temp)<-"rs07avgTemp"
rs08avg.temp<-as.data.frame(tapply(rs08A$temp,rs08A$plotid,mean))
names(rs08avg.temp)<-"rs08avgTemp"
rs09avg.temp<-as.data.frame(tapply(rs09$temp,rs09$plotid,mean))
names(rs09avg.temp)<-"rs09avgTemp"
rs10avg.temp<-as.data.frame(tapply(rs10$temp,rs10$plotid,mean))
names(rs10avg.temp)<-"rs10avgTemp"
rs11avg.temp<-as.data.frame(tapply(rs11$temp,rs11$plotid,mean))
names(rs11avg.temp)<-"rs11avgTemp"
rs12avg.temp<-as.data.frame(tapply(rs12$temp,rs12$plotid,mean))
names(rs12avg.temp)<-"rs12avgTemp"

# Bind the average temperature dfs and add them to the larger
# temperature variables data frame
rsAvgs<-cbind(rs04avg.temp,rs05avg.temp,rs06avg.temp,rs07avg.temp,
              rs08avg.temp,rs09avg.temp,rs10avg.temp,rs11avg.temp,
              rs12avg.temp)

rsTempVars<-cbind(rsTempVars,rsAvgs)
rm(rs04avg.temp,rs05avg.temp,rs06avg.temp,rs07avg.temp,
   rs08avg.temp,rs09avg.temp,rs10avg.temp,rs11avg.temp,
   rs12avg.temp)

write.csv(rsTempVars,"rainy season temperature variables.csv")

rm(list=ls(pattern="^")) #Remove items from workspace by beginning pattern

library(data.table)

rm(list=ls(pattern="^wy")) #Remove items from workspace by beginning pattern

# PROCESSING EACH RAINY SEASON INTO RATIOS OF HOURS/POTENTIAL HOURS #
################
################
# This file has all the processed temperature variables for all years
rsTempVars<-read.csv("rainy season temperature variables.csv")

### Process 2004 rainy season; this section is commented to explain
### what the code is doing. It is essentially repeated for all other
### years
#####
# Check to see if more than 10% of potential observations are missing
rs04obs$rs04hrs<-apply(rs04obs,1,function(row) if(row[1]<4600.8) "NA" else row[1])
# Convert new column to numeric, producing NAs for "NA"
rs04obs[,2]<-as.numeric(rs04hrs[,2])
# Add the counted hours for each threshold and range variable for 2004;
# referred to by column index
rs04hrs<-cbind(rs04obs,rsTempVars[
  c("rs04hrsBelow0","rs04hrsBelow10","rs04hrsBelow5","rs04hrsBelow4",
    "rs04hrsBelow8","rs04hrs5_15","rs04hrs5_20","rs04hrs5_10",
    "rs04hrs8_16","rs04hrs10_15","rs04hrs20_25","rs04hrs14_26",
    "rs04hrs15_20","rs04hrsAbove18","rs04hrsAbove22","rs04hrsAbove26",
    "rs04hrsAbove30","rs04avgTemp")])

# Calculate ratios for each variable, adding new coluns to the df
rs04hrs<-transform(rs04hrs,rs04pBelow0 = rs04hrsBelow0 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pBelow10 = rs04hrsBelow10 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pBelow5 = rs04hrsBelow5 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pBelow4 = rs04hrsBelow4 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pBelow8 = rs04hrsBelow8 / rs04hrs)

rs04hrs<-transform(rs04hrs,rs04p5_15 = rs04hrs5_15 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p5_20 = rs04hrs5_20 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p5_10 = rs04hrs5_10 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p8_16 = rs04hrs8_16 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p10_15 = rs04hrs10_15 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p20_25 = rs04hrs20_25 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p14_26 = rs04hrs14_26 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04p15_20 = rs04hrs15_20 / rs04hrs)

rs04hrs<-transform(rs04hrs,rs04pAbove18 = rs04hrsAbove18 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pAbove22 = rs04hrsAbove22 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pAbove26 = rs04hrsAbove26 / rs04hrs)
rs04hrs<-transform(rs04hrs,rs04pAbove30 = rs04hrsAbove30 / rs04hrs)
#####

### Process 2005 rainy season 
#####
names(rs05obs)[1]<-"rs05obshrs"
rs05obs$rs05hrs<-apply(rs05obs,1,function(row) if(row[1]<4579.2) "NA" else row[1])
rs05obs[,2]<-as.numeric(rs05obs[,2])
rs05hrs<-cbind(rs05obs,rsTempVars[
  c("rs05hrsBelow0","rs05hrsBelow10","rs05hrsBelow5","rs05hrsBelow4",
    "rs05hrsBelow8","rs05hrs5_15","rs05hrs5_20","rs05hrs5_10",
    "rs05hrs8_16","rs05hrs10_15","rs05hrs20_25","rs05hrs14_26",
    "rs05hrs15_20","rs05hrsAbove18","rs05hrsAbove22","rs05hrsAbove26",
    "rs05hrsAbove30","rs05avgTemp")])

rs05hrs<-transform(rs05hrs,rs05pBelow0 = rs05hrsBelow0 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pBelow10 = rs05hrsBelow10 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pBelow5 = rs05hrsBelow5 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pBelow4 = rs05hrsBelow4 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pBelow8 = rs05hrsBelow8 / rs05hrs)

rs05hrs<-transform(rs05hrs,rs05p5_15 = rs05hrs5_15 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p5_20 = rs05hrs5_20 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p5_10 = rs05hrs5_10 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p8_16 = rs05hrs8_16 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p10_15 = rs05hrs10_15 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p20_25 = rs05hrs20_25 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p14_26 = rs05hrs14_26 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05p15_20 = rs05hrs15_20 / rs05hrs)

rs05hrs<-transform(rs05hrs,rs05pAbove18 = rs05hrsAbove18 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pAbove22 = rs05hrsAbove22 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pAbove26 = rs05hrsAbove26 / rs05hrs)
rs05hrs<-transform(rs05hrs,rs05pAbove30 = rs05hrsAbove30 / rs05hrs)
#####

### Process 2006 rainy season 
#####
names(rs06obs)[1]<-"rs06obshrs"
rs06obs$rs06hrs<-apply(rs06obs,1,function(row) if(row[1]<4579.2) "NA" else row[1])
rs06obs[,2]<-as.numeric(rs06obs[,2])
rs06hrs<-cbind(rs06obs,rsTempVars[
  c("rs06hrsBelow0","rs06hrsBelow10","rs06hrsBelow5","rs06hrsBelow4",
    "rs06hrsBelow8","rs06hrs5_15","rs06hrs5_20","rs06hrs5_10",
    "rs06hrs8_16","rs06hrs10_15","rs06hrs20_25","rs06hrs14_26",
    "rs06hrs15_20","rs06hrsAbove18","rs06hrsAbove22","rs06hrsAbove26",
    "rs06hrsAbove30","rs06avgTemp")])

rs06hrs<-transform(rs06hrs,rs06pBelow0 = rs06hrsBelow0 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pBelow10 = rs06hrsBelow10 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pBelow5 = rs06hrsBelow5 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pBelow4 = rs06hrsBelow4 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pBelow8 = rs06hrsBelow8 / rs06hrs)

rs06hrs<-transform(rs06hrs,rs06p5_15 = rs06hrs5_15 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p5_20 = rs06hrs5_20 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p5_10 = rs06hrs5_10 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p8_16 = rs06hrs8_16 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p10_15 = rs06hrs10_15 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p20_25 = rs06hrs20_25 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p14_26 = rs06hrs14_26 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06p15_20 = rs06hrs15_20 / rs06hrs)

rs06hrs<-transform(rs06hrs,rs06pAbove18 = rs06hrsAbove18 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pAbove22 = rs06hrsAbove22 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pAbove26 = rs06hrsAbove26 / rs06hrs)
rs06hrs<-transform(rs06hrs,rs06pAbove30 = rs06hrsAbove30 / rs06hrs)
#####

### Process 2007 rainy season 
#####
names(rs07obs)[1]<-"rs07obshrs"
rs07obs$rs07hrs<-apply(rs07obs,1,function(row) if(row[1]<4579.2) "NA" else row[1])
rs07obs[,2]<-as.numeric(rs07obs[,2])
rs07hrs<-cbind(rs07obs,rsTempVars[
  c("rs07hrsBelow0","rs07hrsBelow10","rs07hrsBelow5","rs07hrsBelow4",
    "rs07hrsBelow8","rs07hrs5_15","rs07hrs5_20","rs07hrs5_10",
    "rs07hrs8_16","rs07hrs10_15","rs07hrs20_25","rs07hrs14_26",
    "rs07hrs15_20","rs07hrsAbove18","rs07hrsAbove22","rs07hrsAbove26",
    "rs07hrsAbove30","rs07avgTemp")])

rs07hrs<-transform(rs07hrs,rs07pBelow0 = rs07hrsBelow0 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pBelow10 = rs07hrsBelow10 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pBelow5 = rs07hrsBelow5 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pBelow4 = rs07hrsBelow4 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pBelow8 = rs07hrsBelow8 / rs07hrs)

rs07hrs<-transform(rs07hrs,rs07p5_15 = rs07hrs5_15 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p5_20 = rs07hrs5_20 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p5_10 = rs07hrs5_10 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p8_16 = rs07hrs8_16 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p10_15 = rs07hrs10_15 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p20_25 = rs07hrs20_25 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p14_26 = rs07hrs14_26 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07p15_20 = rs07hrs15_20 / rs07hrs)

rs07hrs<-transform(rs07hrs,rs07pAbove18 = rs07hrsAbove18 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pAbove22 = rs07hrsAbove22 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pAbove26 = rs07hrsAbove26 / rs07hrs)
rs07hrs<-transform(rs07hrs,rs07pAbove30 = rs07hrsAbove30 / rs07hrs)
#####

### Process 2008 rainy season 
# Ended 'rainy season' possible hours threshold at 4/30/2008 b/c 
# loggers were changed over this year, and most plots missed all of May
# This effectively makes the potential hours 11/1/07-4/30/2008, 4368 hrs
# with 10% threshold being <3931.2
#####
rs08A<-rs08[date %between% c("2007-11-01","2008-04-30",incbounds=T)]
rs08obs<-with(rs08A,tapply(plotid,list(plotid,interval),length))
rs08obs[is.na(rs08obs)]<-0
rs08obs<-as.data.frame(rowSums((rs08obs %*% hourConvs),na.rm=T))

names(rs08obs)[1]<-"rs08obshrs"
rs08obs$rs08hrs<-apply(rs08obs,1,function(row) if(row[1]<3931.2) "NA" else row[1])
rs08obs[,2]<-as.numeric(rs08obs[,2])
rs08hrs<-cbind(rs08obs,rsTempVars[
  c("rs08hrsBelow0","rs08hrsBelow10","rs08hrsBelow5","rs08hrsBelow4",
    "rs08hrsBelow8","rs08hrs5_15","rs08hrs5_20","rs08hrs5_10",
    "rs08hrs8_16","rs08hrs10_15","rs08hrs20_25","rs08hrs14_26",
    "rs08hrs15_20","rs08hrsAbove18","rs08hrsAbove22","rs08hrsAbove26",
    "rs08hrsAbove30","rs08avgTemp")])

rs08hrs<-transform(rs08hrs,rs08pBelow0 = rs08hrsBelow0 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pBelow10 = rs08hrsBelow10 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pBelow5 = rs08hrsBelow5 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pBelow4 = rs08hrsBelow4 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pBelow8 = rs08hrsBelow8 / rs08hrs)

rs08hrs<-transform(rs08hrs,rs08p5_15 = rs08hrs5_15 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p5_20 = rs08hrs5_20 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p5_10 = rs08hrs5_10 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p8_16 = rs08hrs8_16 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p10_15 = rs08hrs10_15 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p20_25 = rs08hrs20_25 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p14_26 = rs08hrs14_26 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08p15_20 = rs08hrs15_20 / rs08hrs)

rs08hrs<-transform(rs08hrs,rs08pAbove18 = rs08hrsAbove18 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pAbove22 = rs08hrsAbove22 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pAbove26 = rs08hrsAbove26 / rs08hrs)
rs08hrs<-transform(rs08hrs,rs08pAbove30 = rs08hrsAbove30 / rs08hrs)
#####

### Process 2009 rainy season 
#####
names(rs09obs)[1]<-"rs09obshrs"
rs09obs$rs09hrs<-apply(rs09obs,1,function(row) if(row[1]<4579.2) "NA" else row[1])
rs09obs[,2]<-as.numeric(rs09obs[,2])
rs09hrs<-cbind(rs09obs,rsTempVars[
  c("rs09hrsBelow0","rs09hrsBelow10","rs09hrsBelow5","rs09hrsBelow4",
    "rs09hrsBelow8","rs09hrs5_15","rs09hrs5_20","rs09hrs5_10",
    "rs09hrs8_16","rs09hrs10_15","rs09hrs20_25","rs09hrs14_26",
    "rs09hrs15_20","rs09hrsAbove18","rs09hrsAbove22","rs09hrsAbove26",
    "rs09hrsAbove30","rs09avgTemp")])

rs09hrs<-transform(rs09hrs,rs09pBelow0 = rs09hrsBelow0 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pBelow10 = rs09hrsBelow10 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pBelow5 = rs09hrsBelow5 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pBelow4 = rs09hrsBelow4 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pBelow8 = rs09hrsBelow8 / rs09hrs)

rs09hrs<-transform(rs09hrs,rs09p5_15 = rs09hrs5_15 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p5_20 = rs09hrs5_20 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p5_10 = rs09hrs5_10 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p8_16 = rs09hrs8_16 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p10_15 = rs09hrs10_15 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p20_25 = rs09hrs20_25 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p14_26 = rs09hrs14_26 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09p15_20 = rs09hrs15_20 / rs09hrs)

rs09hrs<-transform(rs09hrs,rs09pAbove18 = rs09hrsAbove18 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pAbove22 = rs09hrsAbove22 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pAbove26 = rs09hrsAbove26 / rs09hrs)
rs09hrs<-transform(rs09hrs,rs09pAbove30 = rs09hrsAbove30 / rs09hrs)
#####

### Process 2010 rainy season 
#####
names(rs10obs)[1]<-"rs10obshrs"
rs10obs$rs10hrs<-apply(rs10obs,1,function(row) if(row[1]<4579.2) "NA" else row[1])
rs10obs[,2]<-as.numeric(rs10obs[,2])
rs10hrs<-cbind(rs10obs,rsTempVars[
  c("rs10hrsBelow0","rs10hrsBelow10","rs10hrsBelow5","rs10hrsBelow4",
    "rs10hrsBelow8","rs10hrs5_15","rs10hrs5_20","rs10hrs5_10",
    "rs10hrs8_16","rs10hrs10_15","rs10hrs20_25","rs10hrs14_26",
    "rs10hrs15_20","rs10hrsAbove18","rs10hrsAbove22","rs10hrsAbove26",
    "rs10hrsAbove30","rs10avgTemp")])

rs10hrs<-transform(rs10hrs,rs10pBelow0 = rs10hrsBelow0 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pBelow10 = rs10hrsBelow10 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pBelow5 = rs10hrsBelow5 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pBelow4 = rs10hrsBelow4 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pBelow8 = rs10hrsBelow8 / rs10hrs)

rs10hrs<-transform(rs10hrs,rs10p5_15 = rs10hrs5_15 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p5_20 = rs10hrs5_20 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p5_10 = rs10hrs5_10 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p8_16 = rs10hrs8_16 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p10_15 = rs10hrs10_15 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p20_25 = rs10hrs20_25 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p14_26 = rs10hrs14_26 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10p15_20 = rs10hrs15_20 / rs10hrs)

rs10hrs<-transform(rs10hrs,rs10pAbove18 = rs10hrsAbove18 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pAbove22 = rs10hrsAbove22 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pAbove26 = rs10hrsAbove26 / rs10hrs)
rs10hrs<-transform(rs10hrs,rs10pAbove30 = rs10hrsAbove30 / rs10hrs)
#####

### Process 2011 rainy season 
#####
names(rs11obs)[1]<-"rs11obshrs"
rs11obs$rs11hrs<-apply(rs11obs,1,function(row) if(row[1]<4579.2) "NA" else row[1])
rs11obs[,2]<-as.numeric(rs11obs[,2])
rs11hrs<-cbind(rs11obs,rsTempVars[
  c("rs11hrsBelow0","rs11hrsBelow10","rs11hrsBelow5","rs11hrsBelow4",
    "rs11hrsBelow8","rs11hrs5_15","rs11hrs5_20","rs11hrs5_10",
    "rs11hrs8_16","rs11hrs10_15","rs11hrs20_25","rs11hrs14_26",
    "rs11hrs15_20","rs11hrsAbove18","rs11hrsAbove22","rs11hrsAbove26",
    "rs11hrsAbove30","rs11avgTemp")])

rs11hrs<-transform(rs11hrs,rs11pBelow0 = rs11hrsBelow0 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pBelow10 = rs11hrsBelow10 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pBelow5 = rs11hrsBelow5 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pBelow4 = rs11hrsBelow4 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pBelow8 = rs11hrsBelow8 / rs11hrs)

rs11hrs<-transform(rs11hrs,rs11p5_15 = rs11hrs5_15 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p5_20 = rs11hrs5_20 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p5_10 = rs11hrs5_10 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p8_16 = rs11hrs8_16 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p10_15 = rs11hrs10_15 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p20_25 = rs11hrs20_25 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p14_26 = rs11hrs14_26 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11p15_20 = rs11hrs15_20 / rs11hrs)

rs11hrs<-transform(rs11hrs,rs11pAbove18 = rs11hrsAbove18 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pAbove22 = rs11hrsAbove22 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pAbove26 = rs11hrsAbove26 / rs11hrs)
rs11hrs<-transform(rs11hrs,rs11pAbove30 = rs11hrsAbove30 / rs11hrs)
#####

### Process 2012 rainy season 
# Adjusted rainy season potential hours to 5/15/2012 b/c we began
# sampling 5/1; thus some plots do not have data for the rest of May
# yet. This effectively makes the potential hours 4728, 10% threshold
# being 4255.2
#####
rs12A<-rs12[date %between% c("2011-11-01","2012-05-15",incbounds=T)]
rs12obs<-with(rs12A,tapply(plotid,list(plotid,interval),length))
rs12obs[is.na(rs12obs)]<-0
rs12obs<-as.data.frame(rowSums((rs12obs %*% hourConvs),na.rm=T))

names(rs12obs)[1]<-"rs12obshrs"
rs12obs$rs12hrs<-apply(rs12obs,1,function(row) if(row[1]<4255.2) "NA" else row[1])
rs12obs[,2]<-as.numeric(rs12obs[,2])

rs12hrs<-cbind(rs12obs,rsTempVars[
  c("rs12hrsBelow0","rs12hrsBelow10","rs12hrsBelow5","rs12hrsBelow4",
    "rs12hrsBelow8","rs12hrs5_15","rs12hrs5_20","rs12hrs5_10",
    "rs12hrs8_16","rs12hrs10_15","rs12hrs20_25","rs12hrs14_26",
    "rs12hrs15_20","rs12hrsAbove18","rs12hrsAbove22","rs12hrsAbove26",
    "rs12hrsAbove30","rs12avgTemp")])

rs12hrs<-transform(rs12hrs,rs12pBelow0 = rs12hrsBelow0 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pBelow10 = rs12hrsBelow10 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pBelow5 = rs12hrsBelow5 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pBelow4 = rs12hrsBelow4 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pBelow8 = rs12hrsBelow8 / rs12hrs)

rs12hrs<-transform(rs12hrs,rs12p5_15 = rs12hrs5_15 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p5_20 = rs12hrs5_20 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p5_10 = rs12hrs5_10 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p8_16 = rs12hrs8_16 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p10_15 = rs12hrs10_15 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p20_25 = rs12hrs20_25 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p14_26 = rs12hrs14_26 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12p15_20 = rs12hrs15_20 / rs12hrs)

rs12hrs<-transform(rs12hrs,rs12pAbove18 = rs12hrsAbove18 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pAbove22 = rs12hrsAbove22 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pAbove26 = rs12hrsAbove26 / rs12hrs)
rs12hrs<-transform(rs12hrs,rs12pAbove30 = rs12hrsAbove30 / rs12hrs)
#####

# Write the annual rainy season temperature variable data frames to 
# CSV tables
#####
write.csv(rs04hrs,"rsTempVars/rs04tempVars.csv")
write.csv(rs05hrs,"rsTempVars/rs05tempVars.csv")
write.csv(rs06hrs,"rsTempVars/rs06tempVars.csv")
write.csv(rs07hrs,"rsTempVars/rs07tempVars.csv")
write.csv(rs08hrs,"rsTempVars/rs08tempVars.csv")
write.csv(rs09hrs,"rsTempVars/rs09tempVars.csv")
write.csv(rs10hrs,"rsTempVars/rs10tempVars.csv")
write.csv(rs11hrs,"rsTempVars/rs11tempVars.csv")
write.csv(rs12hrs,"rsTempVars/rs12tempVars.csv")

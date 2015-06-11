library(data.table)

rm(list=ls(pattern="^wy")) #Remove items from workspace by beginning pattern

# PROCESSING EACH RAINY SEASON INTO RATIOS OF HOURS/POTENTIAL HOURS #
################
################
# This files has all the processed temperature variables for all years
rsTempVars<-read.csv("rainy season temperature variables.csv")

### Process 2004 rainy season
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
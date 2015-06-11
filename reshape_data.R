#---
# Microclimate data where missing values have been filled using EOF
# Convert to long format and export this data frame/table
#---

# setwd("P:/geospatial/Research/rkmeente/Workspaces/wwdillon/microclimate_tonini")
library(plyr)
library(reshape2)
library(dplyr)
library(tidyr)


load("Temperature/Sonoma050103_043014.RData")

dim(X)
dim(Pred.EOF)

eof_pred <- as.tbl(as.data.frame(Pred.EOF))
class(SpTimeDB.regular.SW$time)
class(SpTimeDB.regular.SW)
class(eof_pred)
eof_pred$time <- SpTimeDB.regular.SW$time
# all.equal(eof_pred, SpTimeDB.regular.SW)

### Plot temperature against time for one site ####
library(ggplot2)

# missing values shown (gaps)
qplot(SpTimeDB.regular.SW$time, SpTimeDB.regular.SW$ANN01, geom = "point",
      size = I(0.5),
      xlab = "time", ylab = "temperature", main = "ANN01 - unfilled") +
      theme_bw() #+ geom_point(size = 0.01) #+ 
      geom_hline(aes(yintercept = mean(SpTimeDB.regular.SW$ANN01, na.rm=TRUE), 
                           color = "orange"))                 
ggsave("figures/ann01_unfilled.png", width = 5.6, height = 4)

ggplot(aes(x = SpTimeDB.regular.SW$time, y = SpTimeDB.regular.SW$ANN01,
           pch = ".", na.rm = TRUE)) + 
      geom_point(size = 0.2) +
      xlab("time") + ylab("temperature") + main("Site: ANN01 - unfilled") +
      geom_abline(h = mean(SpTimeDB.regular.SW$ANN01, na.rm = TRUE, 
                           color = "orange"))

# missing values replaced
qplot(eof_pred$time, eof_pred$ANN01, geom = "point", size = I(0.5), 
      xlab = "time", ylab = "temperature", main = "Site: ANN01 - filled") +
      theme_bw() #+ 
      geom_hline(aes(yintercept = mean(eof_pred$ANN01, na.rm = TRUE), 
                     color = "orange"))                 
ggsave("figures/ann01_filled.png", width = 5.6, height = 4)



### Copy eof_pred data frame and extract each date-time element to its own variable ####
library(lubridate)
d2 <- eof_pred
d2$year <- year(d2$time)
d2$month <- month(d2$time)
d2$day <- day(d2$time)
d2$hour <- hour(d2$time)
#d2$minute <- minute(d2$time)
#d2$second <- second(d2$time)
#d2$dec_date <- decimal_date(d2$time)


# Convert POSIXt to character so data can be manipulated
d2$chr_date <- as.character(d2$time)
#year(as.Date(d2$dec_date, origin = "1999-01-01"))

### Manipulate data from "wide" to "long" and convert character time back to POSIXt ####

# create the "long" data frame
d3 <- d2 %>% select(-time) %>% gather(plotid, temp, -year, -month, -day, -hour, -chr_date)

# convert character time to POSIX time
d3$posix_time <- strptime(d3$chr_date, format="%Y-%m-%d %H", tz="UTC")
class(d3$posix_time)# check class of variable

eof_pred_long <- d3# assign long data frame back to something meaningful
rm(list=ls(pattern="^d"))# remove the temporary data frames from the envrionment

### Save data frame that was manipulated into long format as well as the wide format version ####
saveRDS(eof_pred_long, "Temperature/eof_pred_long.rds")# long format
#write.csv(eof_pred_long, "Temperature/eof_pred_long.csv") BAD IDEA (unless necessary), LONG TIME, 1.5 GB
saveRDS(eof_pred, "Temperature/eof_pred_wide.rds")# wide format

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

library(ggplot2)
plot(SpTimeDB.regular.SW$time, SpTimeDB.regular.SW$ANN01, pch = ".",
     xlab = "time", ylab = "temperature", main = "Site: ANN01 - unfilled")
abline(h = mean(SpTimeDB.regular.SW$ANN01, na.rm = TRUE), col = "orange")

plot(eof_pred$time, eof_pred$ANN01, pch = ".", xlab = "time", 
     ylab = "temperature", main = "Site: ANN01 - filled")
abline(h = mean(eof_pred$ANN01), col = "orange")

#d1 <- gather(d1)

summary(eof_pred)
names(eof_pred)
class(eof_pred$time)
names(d1)

#eof_pred$time <- d1$time



# all.equal(eof_pred, SpTimeDB.regular.SW)


### Extract each date-time element to its own variable
library(lubridate)
d2 <- eof_pred
d2$year <- year(d2$time)
d2$month <- month(d2$time)
d2$day <- day(d2$time)
d2$hour <- hour(d2$time)
d2$minute <- minute(d2$time)
d2$second <- second(d2$time)
#d2$dec_date <- decimal_date(d2$time)


### Convert POSIXt to character so data can be manipulated
d2$chr_date <- as.character(d2$time)
#year(as.Date(d2$dec_date, origin = "1999-01-01"))

### Manipulate data from "wide" to "long" and convert character time back to POSIXt
d3 <- d2 %>% select(-time) %>% gather(plotid, temp, -year, -month, -day, -hour, -chr_date)

d3$posix_time <- strptime(d3$chr_date, format="%Y-%m-%d %H:%M:%S", tz="UTC")
class(d3$posix_time)

eof_pred <- d3
rm(list=ls(pattern="^d"))

### Save data frame that was manipulated into long format
saveRDS(eof_pred, "Temperature/eof_pred.rds")


# Plot time series for subset of the plot locations ####
library(ggplot2)
# Subset to fewer plots
dt <- eof_pred %>% 
      filter(plotid == "ANN01" | plotid == "SUGAR23" | plotid == "FOP04")

qplot(x = eof_pred$posix_time, y = eof_pred$temp, 
      data = eof_pred %>% 
            filter(plotid == "ANN01" | plotid == "SUGAR23" | plotid == "FOP04"),
      facet = plotid ~ ., color = plotid, geom = c("point", "line")
            )

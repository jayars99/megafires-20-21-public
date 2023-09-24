### Jessalyn Ayars ###
### 03/02/23 ###
### megafires project analysis

# libraries
library(terra)
library(dplyr)
library(readr)
library(stringr)

# load  data
args = commandArgs(trailingOnly = T)  
sp <- rast(args[1])
cbi4 <- rast(args[2])

if (args[3] == "quality") {
  qual.rast <- mask(sp, cbi4, maskvalues = c(NA, 0))
  stats <- global(qual.rast, fun = "mean", na.rm = T)
} else {
  quant.rast <- mask(cbi4, sp)
  stats <- global(quant.rast, fun = "sum", na.rm = T)
}

write_csv(stats, str_c(args[1], "_", args[2], "_", args[3], ".csv"))
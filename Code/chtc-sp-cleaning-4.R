### Jessalyn Ayars ###
### 02/27/23 ###
### species raster processing: snapping to CBI4 grid

# libraries
library(terra)
library(sf)
library(spData)
library(dplyr)

# load auxiliary data
args = commandArgs(trailingOnly = T)  
cbi4.ex <- rast("cbi4_ca-brick_2021.tif")

## reprojecting
writeRaster(resample(rast(args[1]), cbi4.ex, "near"), "temp.tif", overwrite = T)
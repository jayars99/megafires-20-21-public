### Jessalyn Ayars ###
### 01/19/23 ###
### species raster processing: reprojecting to RAVG grid

# libraries
library(terra)
library(sf)
library(spData)
library(dplyr)

# load auxiliary data
args = commandArgs(trailingOnly = T)  
cbi4.ex <- rast("cbi4_ca-brick_2021.tif")

## reprojecting
writeRaster(project(rast(args[1]), cbi4.ex), "temp.tif", overwrite = T)

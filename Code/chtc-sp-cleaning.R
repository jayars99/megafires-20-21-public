### Jessalyn Ayars ###
### 01/19/23 ###
### species raster processing: multiplying by 100

# libraries
library(terra)
library(sf)

args = commandArgs(trailingOnly = T)  

# multiply by 100 and write
writeRaster(rast(args[1])*100, "temp.tif", overwrite = T)
### Jessalyn Ayars ###
### 01/19/23 ###
### species raster processing: masking out bodies of water

# libraries
library(terra)
library(sf)
library(spData)
library(dplyr)

# load auxiliary data
args = commandArgs(trailingOnly = T)  
water <- st_read("NHD_Major_Lakes_and_Reservoirs.shp") %>%
  st_transform(3310) %>%
  vect()
ca <- filter(us_states, NAME == "California") %>% 
  st_transform(3310) %>%
  vect()

writeRaster(mask(mask(rast(args[1]), water, inverse = T), ca), "temp.tif", overwrite = T)

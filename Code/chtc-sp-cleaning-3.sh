#!/bin/bash


### Jessalyn Ayars ###
### 01/19/23 ###
### executable for megafires species raster processing: reprojecting to RAVG grid ###


cp /staging/jayars/hab-suit-post-2/$4 ./
cp /staging/jayars/cbi4_ca-brick_2021.tif ./

Rscript chtc-sp-cleaning-3.R $4

rm $4
rm cbi4_ca-brick_2021.tif

ls

mv temp.tif /staging/jayars/hab-suit-post-3/$4
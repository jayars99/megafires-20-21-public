#!/bin/bash


### Jessalyn Ayars ###
### 02/27/23 ###
### executable for megafires species raster processing: snapping to CBI4 grid ###


cp /staging/jayars/hab-suit-post-3/$4 ./
cp /staging/jayars/cbi4_ca-brick_2021.tif ./

Rscript chtc-sp-cleaning-4.R $4

rm $4
rm cbi4_ca-brick_2021.tif

ls

mv temp.tif /staging/jayars/hab-suit-post-4/$4
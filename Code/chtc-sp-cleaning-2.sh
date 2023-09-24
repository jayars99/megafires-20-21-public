#!/bin/bash


### Jessalyn Ayars ###
### 01/19/23 ###
### executable for megafires species raster processing: masking out bodies of water ###


cp /staging/jayars/hab-suit-post/$4 ./
cp /staging/jayars/NHD_Major_Lakes_and_Reservoirs.* ./

Rscript chtc-sp-cleaning-2.R $4

rm $4
rm NHD_Major_Lakes_and_Reservoirs.*

ls

mv temp.tif /staging/jayars/hab-suit-post-2/$4
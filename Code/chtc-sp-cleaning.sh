#!/bin/bash


### Jessalyn Ayars ###
### 01/19/23 ###
### executable for megafires species raster processing: multiplying by 100 ###


cp /staging/jayars/hab-suit-pre/$1 ./
cp /staging/jayars/hab-suit-pre/$2 ./
cp /staging/jayars/hab-suit-pre/$3 ./

Rscript chtc-sp-cleaning.R $1

rm $1
rm $2
rm $3

ls

mv temp.tif /staging/jayars/hab-suit-post/$4
#!/bin/bash


### Jessalyn Ayars ###
### 03/24/23 ###
### executable for megafires species analysis by ecoregion ###


cp /staging/jayars/hab-suit-post-4/$1 ./
cp /staging/jayars/$2 ./

Rscript chtc-analysis.R $1 $2 $3

rm $1
rm $2
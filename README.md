# megafires-20-21-public
This repository contains code used for the analysis presented in "The 2020-2021 California megafires and their impacts to wildlife habitat," currently in review at PNAS. 
## Code
- species-metadata-cleaning.Rmd: tidies species metadata from the California Wildlife Habitat Relationships database (CWHR)
- ravg-cleaning.Rmd: processes 2012-2021 Rapid Assessment of Vegetation Condition After Fire (RAVG) tifs
- sp-raster-cleaning.Rmd: code to send jobs processing the CWHR tifs to the University of Wisconsin High Throughput Computing System (CHTC)
- chtc-sp-cleaning.R, .sub, .sh, and .txt: job files to multiply the CWHR tifs by 100 in CHTC
- chtc-sp-cleaning-2.R, .sub, .sh, and .txt: job files to mask bodies of water out of CWHR tifs in CHTC
- chtc-sp-cleaning-3.R, .sub, .sh, and .txt: job files to reproject CWHR tifs to the RAVG projection in CHTC
- chtc-sp-cleaning-4.R, .sub, .sh, and .txt: job files to snap CWHR tifs to the RAVG projection in CHTC
- analysis-terra.Rmd: making jobs to send to CHTC to get area burned and average habitat quality burned
- chtc-analysis-ecoregions.R, .sub, .sh, and .txt: job files to get area burned and average habitat quality burned in CHTC
- analysis-part2.Rmd: summarizing results by fire severity, ecoregion, taxa, and SGCN

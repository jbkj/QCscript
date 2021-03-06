#!/bin/bash
plink --noweb --bfile $1  --allow-no-sex --make-bed --maf 0.01 --out output/maf001 
plink --noweb --bfile output/maf001 --write-snplist  --out output/snps_o_maf_001
plink --noweb --bfile $1  --allow-no-sex --make-bed --exclude output/snps_o_maf_001.snplist --out output/maf_u001
plink --noweb --bfile $1 --het  --allow-no-sex --out output/inbreed
plink --noweb --bfile output/maf001 --het --allow-no-sex --out output/inbreed_maf001
plink --noweb --bfile output/maf_u001 --het --allow-no-sex --out output/inbreed_maf_u001

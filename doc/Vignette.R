## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  options(repos = c(CRAN = "https://cran.rstudio.com/"))
#  
#  if (!requireNamespace("devtools", quietly = TRUE)) {
#    install.packages("devtools")
#  }
#  library(devtools)
#  devtools::install_github("https://github.com/elenasasso/GenesClasses")

## ----setup, warning=FALSE, message=FALSE--------------------------------------
library(GenesClasses)

## ----eval= FALSE--------------------------------------------------------------
#  g1 <- Gene(id = 1)

## -----------------------------------------------------------------------------
brca1 <- CodingGene(id = 207233, Hugo_symbol = 'BRCA1', chrom = 'chr17', CDS_end = 41197695, CDS_start = 41258496, strand = '-')

## -----------------------------------------------------------------------------
brca2 <- CodingGene(id = 563829, Hugo_symbol = 'BRCA2', chrom = 'chr13', CDS_start = 32890598, CDS_end = 32972907, strand = '+')

## -----------------------------------------------------------------------------
HkGene <- Housekeeping_RNA_Gene(id = 14567, category = "Housekeeping")

## ----eval=FALSE---------------------------------------------------------------
#  tRNA1 <- tRNA_Gene(id = 4672829, start = 3562, end = 4567,number_exon = 8,  specific_aa = "Alanin")

## -----------------------------------------------------------------------------
tRNA1 <- tRNA_Gene(id = 4672829, start = 3562, end = 4567,number_exon = 8,  specific_aa = "Alanine")

## -----------------------------------------------------------------------------
tRNA2 <- tRNA_Gene(id = 46271, number_exon = 4,  specific_aa = "Glutamine")

## -----------------------------------------------------------------------------
tRNA3 <- tRNA_Gene(id = 10087, start = 1578, end = 2766, number_exon = 10,  specific_aa = "Tyrosine")

## ----eval=FALSE---------------------------------------------------------------
#  rRNA1 <- rRNA_Gene(id = 627291, rRNA_ID = 356282,  specific_RNA = "16s")

## -----------------------------------------------------------------------------
rRNA1 <- rRNA_Gene(id = 627291, rRNA_ID = 356282,  specific_RNA = "18s")

## -----------------------------------------------------------------------------
rRNA2 <- rRNA_Gene(id = 98578, start = 282, end = 876, specific_RNA = "5.8s")

## -----------------------------------------------------------------------------
rRNA3 <- rRNA_Gene(id = 268191,  TSS = 886, TTS = 6567 ,specific_RNA = "5s")

## -----------------------------------------------------------------------------
rRNA4 <- rRNA_Gene(id = 2681, length_rRNA = 87, rRNA_ID = 350,  specific_RNA = "28s")

## -----------------------------------------------------------------------------
NcGene <- ncRNA_Gene(id = 545, category = "Regolative")

## ----eval=FALSE---------------------------------------------------------------
#  lncfoxp3 <- lncRNA_Gene(id = 62728, Hugo_symbol = "lncFOXP3", length_lncRNA = 120)

## -----------------------------------------------------------------------------
lncfoxp3 <- lncRNA_Gene(id = 62728, Hugo_symbol = "lncFOXP3", length_lncRNA = 1500)

## -----------------------------------------------------------------------------
SncGene <- sncRNA_Gene(id = 54865, category = "Regolative", length_sncRNA = 76)

## -----------------------------------------------------------------------------
miRNA1 <- miRNA_Gene(id= 508218, length_sncRNA = 48, RNA_target = list(brca1, lncfoxp3))

## -----------------------------------------------------------------------------
SNORD116 <- snoRNA_Gene(id = 8265, description = 'small nucleolar RNA that plays a crucial role in the development of Prader-Willi Syndrome')

## -----------------------------------------------------------------------------
U1 <- snRNA_Gene(id= 508218, length_sncRNA = 64, gene_product = "snRNA")

## -----------------------------------------------------------------------------
U2 <- snRNA_Gene(id= 57282, length_sncRNA = 68, gene_product = "snRNA")

## -----------------------------------------------------------------------------
ComputeGeneLength(tRNA1)

## -----------------------------------------------------------------------------
ComputeGeneLength(rRNA2)

## -----------------------------------------------------------------------------
lengthProduct(lncfoxp3)

## -----------------------------------------------------------------------------
lengthProduct(U1)

## -----------------------------------------------------------------------------
lengthProduct(rRNA4)

## ----eval=FALSE---------------------------------------------------------------
#  tp53 <- CodingGene(Hugo_symbol = 'tp53')

## ----eval=FALSE---------------------------------------------------------------
#  MitocondrialGene <- CodingGene(id = 144261, location = 'Nucleus', chrom = 'M')

## ----eval=FALSE---------------------------------------------------------------
#  smallnoncodingGene <- sncRNA_Gene(id = 9875, strand = '+', TSS = 1023, TTS = 763)

## ----eval=FALSE---------------------------------------------------------------
#  pik3ca <- CodingGene(id = 2876, chrom = "chr3", TSS = 980, CDS_start = 900, strand = '+' , number_exon = 21)

## ----eval=FALSE---------------------------------------------------------------
#  snoRNA <- snoRNA_Gene(id = 52719, gene_product = "tRNA")

## ----eval=FALSE---------------------------------------------------------------
#  HouseKeepingGene <- Housekeeping_RNA_Gene(id = 6789, category = 'Regolative')

## ----eval=FALSE---------------------------------------------------------------
#  smallNuclearRna <- snRNA_Gene(id = 78641, type_RNA = 'long')

## ----sessionInfo--------------------------------------------------------------
sessionInfo()



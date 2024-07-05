# Scientific programming R project: Gene Classes Package


## Background
This project was developed as part of the Scientific programming course within the Master's degree in Bioinformatics for Computational Genomics.

## Authors
This project was developed by [Elena Sasso](https://github.com/elenasasso) .


## Project Overview
The package is designed to help biologist to store informations about all different type of genes. 

It contains a virtual general class called "Gene," from which all other specific classes derive. This class includes general attributes that are shared among all genes.

The derived specific gene classes are divided into three main categories: coding genes, Housekeeping RNA genes, and non-coding RNA genes.

The second and third categories are further subdivided into more specific classes:

-   Housekeeping RNA genes are divided into tRNA genes and rRNA genes.

-   Non-coding RNA genes are divided into long non-coding RNA genes and short non-coding RNA genes, with the latter further subdivided into miRNA, snoRNA, and snRNA.

For each gene, it is possible to compute the length of the gene in base pairs and the length of the product it generates. 
Additionally, you can easily access and modify all attributes of each gene across all classes.

If you want to see some example you can see the [Vignette.html](Vignette.html) file in the [doc](doc) folder.

## How to Use This Repository
If you're interested in running the analysis yourself, please follow the instruction in the [Vignette.html](Vignette.html) to install the package.
You can find all the scripts in the [R](R) folder and all the informations about it in the [man](man) folder. Please make sure you have R installed.


## Contact
For any additional questions or feedback, please contact [Elena Sasso](mailto:elenasasso01@gmail.com).

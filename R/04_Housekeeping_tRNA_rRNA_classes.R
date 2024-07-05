#' Housekeeping_RNA Genes Class
#'
#' A class to represent housekeeping genes.
#'
#' @slot category A character string representing the category of the gene. Default is "Housekeeping" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype for the category is "Housekeeping".
#' 
#' The validity function checks the validity of the object by ensuring that the category is right
#'
#' @return A \code{Housekeeping_RNA_Gene} object.
#' 
#' @examples
#' # Create a housekeeping_RNA_Gene object
#' Housekeeping1 <- Housekeeping_RNA_Gene(id = 2)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \link[=Gene-class]{Gene}
#'
#' @export
Housekeeping_RNA_Gene <- setClass("Housekeeping_RNA_Gene", prototype = list(category = "Housekeeping"),
                       
                       validity = function(object) {
                         
                         if (!is.na(object@category) && object@category != "Housekeeping") {
                           return("The Housekeeping RNA genes are considered to be housekeeping genes")
                         }
                       }
                       
                       ,contains = "Gene"
                       
)



#' Class for tRNA Genes
#'
#' This class represents tRNA genes, which are responsible for the production of transfer RNA.
#'
#' @slot specific_aa A character string representing the specific amino acid that the tRNA is going to transfer.
#' @slot tRNA_ID A numeric identifier for the tRNA produced by the gene.
#' @slot length_tRNA A numeric value representing the length of the tRNA produced by the gene.
#' @slot category A character string representing the category of the gene. Default is "Housekeeping" and it's not possibile to change it.
#' @slot gene_product A character string representing the gene product. Default is "tRNA" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#' specific_aa = NA_character_, tRNA_ID = NA_real_, length_tRNA = NA_real_, category = "Housekeeping", gene_product = "tRNA".
#'
#' the validity function checks the validity of the object by ensuring:
#' \itemize{
#'   \item the specific amino acid is valid by ensuring it exists in the \code{amino_acids} list.
#'   \item the category and the product are right.
#' }
#'
#' @return A \code{tRNA_Gene} object.
#'
#' @examples
#' # Create a new tRNA gene
#' tRNA1 <- tRNA_Gene(id = 3, specific_aa = "Alanine", tRNA_ID = 1001, length_tRNA = 76)
#' print(tRNA1)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#' 
#' @seealso \code{\link{amino_acids}}
#' @seealso \code{\link{Housekeeping_RNA_Gene}}
#' 
#' @export
tRNA_Gene <- setClass("tRNA_Gene", slots=list(specific_aa = "character", 
                                              tRNA_ID = "numeric", length_tRNA = "numeric"), 
                      prototype = list(specific_aa = NA_character_, tRNA_ID = NA_real_,
                                       length_tRNA = NA_real_, category = "Housekeeping", 
                                       gene_product = "tRNA"), 
                      
                      validity = function(object) {
                        
                        if (!is.na(object@specific_aa) && !(object@specific_aa %in% amino_acids)) {
                          return("This specific amminoacid doesn't exist")
                        }
                        
                        if (!is.na(object@category) && object@category != "Housekeeping") {
                          return("The tRNAs are considered to be housekeeping genes")
                        }
                          
                        if (!is.na(object@gene_product) && object@gene_product != 'tRNA') {
                          return("The product of a tRNA gene must be a tRNA")
                        }
                        
                      }
                      
                      ,contains = "Housekeeping_RNA_Gene"
                      
)



#' Class for rRNA Genes
#'
#' This class represents rRNA genes, which are responsible for the production of ribosomal RNA.
#'
#' @slot specific_RNA A character string representing the specific rRNA type. Only eukaryotic types are possible.
#' @slot rRNA_ID A numeric identifier for the rRNA produced by the gene.
#' @slot length_rRNA A numeric value representing the length of the rRNA produced by the gene.
#' @slot category A character string representing the category of the gene. Default is "Housekeeping" and it's not possibile to change it.
#' @slot gene_product A character string representing the gene product. Default is "rRNA" and it's not possibile to change it.
#' 
#' @details
#' Additional details:
#' The prototype are: 
#' specific_RNA = NA_character_, rRNA_ID = NA_real_, length_rRNA = NA_real_, category = "Housekeeping", gene_product = "rRNA".
#' 
#' The validity function checks the validity of the object by ensuring:
#' \itemize{
#'   \item the specific rRNA is valid by ensuring it exists in the \code{rRNA} list.
#'   \item the category and the product are right.
#' } 
#' 
#' @return A \code{rRNA_Gene} object.
#' 
#' @examples
#' # Create a new rRNA gene
#' rRNA1 <- rRNA_Gene(id = 4, specific_RNA = "18s", rRNA_ID = 2001, length_rRNA = 1869)
#' print(rRNA1)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#' 
#' @seealso \code{\link{rRNA}}
#' @seealso \code{\link{Housekeeping_RNA_Gene}}
#' 
#' @export
rRNA_Gene <- setClass("rRNA_Gene", slots=list(specific_RNA = "character", 
                                              rRNA_ID = "numeric", length_rRNA = "numeric"), 
                      prototype = list(specific_RNA = NA_character_, rRNA_ID = NA_real_,
                                       length_rRNA = NA_real_, category = "Housekeeping", 
                                       gene_product = "rRNA"), 
                      
                      validity = function(object) {
                        
                        if (!is.na(object@specific_RNA) && !(object@specific_RNA %in% rRNA)) {
                          return("The rRNAs are 18s, 28s, 5s, 5.8s")
                        }
                        
                        if (!is.na(object@category) && object@category != "Housekeeping") {
                          return("The rRNAs are considered to be housekeeping genes")
                        }
                        
                        if (!is.na(object@gene_product) && object@gene_product != 'rRNA') {
                          return("The product of a rRNA gene must be a rRNA")
                        }
                        
                      }
                      
                      ,contains = "Housekeeping_RNA_Gene"
                      
)

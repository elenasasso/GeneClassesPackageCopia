#' ncRNA_Gene Class
#'
#' A class to represent non-coding RNA (ncRNA) genes.
#'
#' @slot category A character string representing the category of the gene. 
#' Default is "Regolative" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype for category is "Regolative".
#' 
#' The validity function checks the validity of the object by ensuring that 
#' the category is right.
#'
#' @return A \code{ncRNA_Gene} object.
#' 
#' @examples
#' # Create a ncRNA_Gene object
#' ncRNA_gene <- ncRNA_Gene(id = 5)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \link[=Gene-class]{Gene}
#'
#' @export
ncRNA_Gene <- setClass("ncRNA_Gene", prototype = list(category = "Regolative"),
                       
                       validity = function(object) {
                       
                       if (!is.na(object@category) 
                           && object@category != "Regolative") {
                         return("The ncRNAs are considered to be regolative 
                                genes")
                       }
                      }
                       
                       ,contains = "Gene"
                       
)



#' lncRNA_Gene Class
#'
#' A class to represent long non-coding RNA (lncRNA) genes.
#'
#' @slot length_lncRNA A numeric value indicating the length of the lncRNA.
#' @slot lncRNA_ID A numeric value representing the lncRNA ID.
#' @slot gene_product A character string representing the product of the gene.
#' Default is "lncRNA" and it's not possibile to change it.
#'@slot type_RNA A character string representing the type of RNA. Default is 
#' "long" and it's not possible to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#' length_lncRNA = NA_real_, lncRNA_ID = NA_real_, gene_product = "lncRNA", 
#' type_RNA = "long".
#'
#' The validity function checks the validity of the object by ensuring:
#' \itemize{
#'   \item the length of the lncRNA is at least 200.
#'   \item the product and the type(long) are correct.
#' }
#'
#' @return A \code{lncRNA_Gene} object.
#' 
#' @examples
#' # Create a lncRNA_Gene object
#' lncRNA_gene <- lncRNA_Gene(id = 6, Hugo_symbol = "lncFOXP3", 
#' length_lncRNA = 300, lncRNA_ID = 1)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \code{\link{ncRNA_Gene}}
#'
#' @export
lncRNA_Gene <- setClass("lncRNA_Gene", slots=list(length_lncRNA = "numeric", 
                                                  lncRNA_ID = "numeric", 
                                                  type_RNA = "character"), 
                        prototype = list(length_lncRNA = NA_real_, 
                                         lncRNA_ID = NA_real_,
                                         gene_product = "lncRNA", 
                                         type_RNA = "long"), 
                        
                        validity = function(object) {
                          
                          if (!is.na(object@length_lncRNA) 
                              && object@length_lncRNA < 200) {
                            return("The length of a lncRNA must be at least 
                            200, otherwise it's a short non coding RNA")
                          }
                          
                          if (!is.na(object@gene_product) 
                              && object@gene_product != 'lncRNA') {
                            return("The product of a lncRNA gene must be a 
                                   lncRNA")
                          }
                          
                          if (!is.na(object@type_RNA) 
                              && object@type_RNA != 'long') {
                            return("A lncRNA is long")
                          }
                          
                        }
                        
                        ,contains = "ncRNA_Gene"
                        
)



#' sncRNA_Gene Class
#'
#' A class to represent small non-coding RNA (sncRNA) genes.
#'
#' @slot length_sncRNA A numeric value indicating the length of the sncRNA.
#' @slot sncRNA_ID A numeric value representing the sncRNA ID.
#' @slot type_RNA A character string representing the type of RNA. 
#' Default is "short" and it's not possible to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#' length_sncRNA = NA_real_, sncRNA_ID = NA_real_, type_RNA = "short".
#'
#' The validity function checks the validity of the object by ensuring:
#' \itemize{
#'   \item the length of the sncRNA is at most 200.
#'   \item the type is correct (short).
#' }
#'
#' @return A \code{sncRNA_Gene} object.
#' @examples
#' # Create a sncRNA_Gene object
#' sncRNA_gene <- sncRNA_Gene(id = 7, length_sncRNA = 80, sncRNA_ID = 1)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \code{\link{ncRNA_Gene}}
#'
#' @export
sncRNA_Gene <- setClass("sncRNA_Gene", slots=list(length_sncRNA = "numeric", 
                                                  sncRNA_ID = "numeric", 
                                                  type_RNA = "character"),
                        
                        prototype = list(length_sncRNA = NA_real_, 
                                         sncRNA_ID = NA_real_,
                                         type_RNA = "short"), 
                        
                        validity = function(object) {
                          
                          if (!is.na(object@length_sncRNA) 
                              && object@length_sncRNA >= 200) {
                            return("The length of a sncRNA must be at most 200,
                                   otherwise it's a long non coding RNA")
                          }
                          
                          if (!is.na(object@type_RNA) 
                              && object@type_RNA != 'short') {
                            return("A sncRNA is short")
                          }
                          
                        }
                        
                        ,contains = "ncRNA_Gene"
                        
)



#' miRNA_Gene Class
#'
#' A class to represent microRNA (miRNA) genes.
#'
#' @slot miRNA_ID A numeric value representing the miRNA ID.
#' @slot RNA_target A list of miRNA targets.
#' @slot gene_product A character string representing the product of the gene. 
#' Default is "miRNA" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#' miRNA_ID = NA_real_, RNA_target = list(), gene_product = "miRNA".
#'
#' The validity function ensures the gene product is 'miRNA'.
#'
#' @return A \code{miRNA_Gene} object.
#' @examples
#' # Create a miRNA_Gene object
#' miRNA_gene <- miRNA_Gene(id = 8, miRNA_ID = 1, RNA_target = list("target1",
#' "target2"))
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \code{\link{sncRNA_Gene}}
#'
#' @export
miRNA_Gene <- setClass("miRNA_Gene", slots=list(miRNA_ID = "numeric", 
                                                RNA_target = "list"), 
                       prototype = list(miRNA_ID = NA_real_, 
                                        RNA_target = list(),
                                        gene_product = "miRNA"),
                       
                       validity = function(object) {
                         
                       if (!is.na(object@gene_product) 
                           && object@gene_product != 'miRNA') {
                         return("The product of a miRNA gene must be a miRNA")
                       }
                      } 
                       ,contains = "sncRNA_Gene"
                       
)



#' snoRNA_Gene Class
#'
#' A class to represent small nucleolar RNA (snoRNA) genes.
#'
#' @slot snoRNA_ID A numeric value representing the snoRNA ID.
#' @slot gene_product A character string representing the product of the gene.
#' Default is "snoRNA" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#' snoRNA_ID = NA_real_, gene_product = "snoRNA".
#'
#' The validity function ensures the gene product is 'snoRNA'.
#'
#' @return A \code{snoRNA_Gene} object.
#' 
#' @examples
#' # Create a snoRNA_Gene object
#' snoRNA_gene <- snoRNA_Gene(id = 9, snoRNA_ID = 1)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \code{\link{sncRNA_Gene}}
#'
#' @export
snoRNA_Gene <- setClass("snoRNA_Gene", slots=list(snoRNA_ID = "numeric"), 
                        prototype = list(snoRNA_ID = NA_real_, 
                                         gene_product = "snoRNA"),
                        
                        validity = function(object) {
                          
                          if (!is.na(object@gene_product) 
                              && object@gene_product != 'snoRNA') {
                            return("The product of a snoRNA gene must be a 
                                   snoRNA")
                          }
                        } 
                        ,contains = "sncRNA_Gene"
                        
)



#' snRNA_Gene Class
#'
#' A class to represent small nuclear RNA (snRNA) genes.
#'
#' @slot snRNA_ID A numeric value representing the snRNA ID.
#' @slot gene_product A character string representing the product of the gene. 
#' Default is "snRNA" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#' snRNA_ID = NA_real_, gene_product = "snRNA".
#'
#' The validity function ensures the gene product is 'snRNA'.
#'
#' @return A \code{snRNA_Gene} object.
#' 
#' @examples
#' # Create a snRNA_Gene object
#' snRNA_gene <- snRNA_Gene(id = 10, snRNA_ID = 1)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \code{\link{sncRNA_Gene}}
#'
#' @export
snRNA_Gene <- setClass("snRNA_Gene", slots=list(snRNA_ID = "numeric"), 
                       prototype = list(snRNA_ID = NA_real_, 
                                        gene_product = "snRNA"),
                       
                       validity = function(object) {
                         
                         if (!is.na(object@gene_product) 
                             && object@gene_product != 'snRNA') {
                           return("The product of a snRNA gene must be a 
                                  snRNA")
                         }
                       } 
                       
                       ,contains = "sncRNA_Gene"
                       
)


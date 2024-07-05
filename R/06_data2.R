#' List of all classes
#'
#' This variable contains the list of all classes to be used in the \code{createAccessors} function.
#'
#' @name classList
#'
#' @examples 
#' print(classList)
#'
#' @format A character list with 10 elements.
#' @export
classList <- list("Gene", "tRNA_Gene", "CodingGene", "rRNA_Gene", "ncRNA_Gene", 
                  "lncRNA_Gene", "sncRNA_Gene", "miRNA_Gene", "snRNA_Gene", "snoRNA_Gene")


#' List of all classes except the virtual one
#'
#' This variable contains the list of all classes except the virtual one to be used in the \code{LengthProduct} function.
#'
#' @name classList_for_product
#' @examples 
#' print(classList_for_product)
#' @format A character list with 10 elements.
#' @export
classList_for_product <- classList[-1]
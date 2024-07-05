#' List of Amino Acids
#'
#' This variable contains a list of amino acids used for validation in the \code{tRNA_Gene} class.
#'
#' @name amino_acids
#' @docType data
#' @usage amino_acids
#' @format A character vector with 20 elements.
#' @examples
#' tRNA1 <- tRNA_Gene(id = 1, specific_aa = "Alanine")
#' 
#' @export
amino_acids <- c("Alanine", "Arginine", "Asparagine", "Aspartic acid", "Cysteine", 
                 "Glutamic acid", "Glutamine", "Glycine", "Histidine", "Isoleucine", 
                 "Leucine", "Lysine", "Methionine", "Phenylalanine", "Proline", 
                 "Serine", "Threonine", "Tryptophan", "Tyrosine", "Valine")



#' List of rRNAs
#'
#' This variable contains a list of possible rRNAs used for validation in the \code{rRNA_Gene} class.
#'
#' @name rRNA
#' @docType data
#' @usage rRNA
#' @format A character vector with 4 elements.
#' @examples
#' rRNA1 <- rRNA_Gene(id = 1, specific_RNA = "18s")
#' 
#' @export
rRNA <- c("18s", "28s", "5s", "5.8s")
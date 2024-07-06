#' CodingGene Class
#'
#' A class to represent a protein-coding gene.
#'
#' @slot CDS_start A numeric value representing the coding sequence start 
#' position.
#' @slot CDS_end A numeric value representing the coding sequence end position.
#' @slot protein_ID A numeric value representing the protein ID.
#' @slot length_protein A numeric value representing the length of the protein 
#' in amino acids.
#' @slot category A character string representing the category of the gene. 
#' Default is "Protein-coding" and it's not possibile to change it.
#' @slot gene_product A character string representing the gene product. 
#' Default is "Protein" and it's not possibile to change it.
#'
#' @details
#' Additional details:
#' The prototype are:
#'  CDS_start = NA_real_, CDS_end = NA_real_, length_protein = NA_real_, 
#'  protein_ID = NA_real_, gene_product = "Protein", 
#'  category = "Protein-coding".
#'
#' The validity function checks the validity of the object by ensuring:
#' \itemize{
#'   \item The length of the protein must be at least 100 amino acids.
#'   \item If the gene is annotated on the positive strand, CDS_start must be 
#'   lower than CDS_end.
#'   \item If the gene is annotated on the negative strand, CDS_start must be 
#'   higher than CDS_end.
#'   \item If the gene is annotated on the positive strand, CDS_start must be 
#'   higher than the TSS.
#'   \item If the gene is annotated on the negative strand, CDS_start must be 
#'   lower than the TSS.
#'   \item If the gene is annotated on the negative strand, CDS_end must be 
#'   higher than the TTS.
#'   \item If the gene is annotated on the positive strand, CDS_end must be 
#'   lower than the TTS.
#' }
#'
#' @return A \code{CodingGene} object.
#' 
#' @examples
#' # Create a CodingGene object
#' Gene1 <- CodingGene(id = 1, Hugo_symbol = "TP53", chrom = "17", 
#' length_protein = 393)
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @seealso \link[=Gene-class]{Gene}
#'
#' @export
CodingGene <- setClass("CodingGene", slots=list(CDS_start = "numeric", 
                                                CDS_end = "numeric", 
                                                protein_ID = "numeric", 
                                                length_protein = "numeric"), 
                       prototype = list(CDS_start = NA_real_, 
                                        CDS_end = NA_real_, 
                                        length_protein = NA_real_, 
                                        protein_ID = NA_real_, 
                                        gene_product = "Protein", 
                                        category = "Protein-coding"), 
                       
                       validity = function(object) {
                         
                         if (!is.na(object@length_protein) 
                             && object@length_protein < 100) {
                           return("To be codificant the protein encoded must
                                  be of at least 100 amminoacids")
                         }
                         
                         if (!is.na(object@category) && 
                             object@category != "Protein-coding") {
                           return("The category of a coding gene is 
                                  protein-coding")
                         }
                         
                         if (!is.na(object@gene_product) 
                             && object@gene_product != 'Protein') {
                           return("The product of a protein coding gene must 
                                  be a protein")
                         }
                         
                         if (!is.na(object@strand) && !is.na(object@CDS_start) 
                             && !is.na(object@CDS_end)) {
                           
                           if (object@strand == '+' 
                               && object@CDS_start >= object@CDS_end) {
                             return("Error: if the gene is annotated on the 
                                    positive strand the CDS_start must be lower 
                                    than the CDS_end")
                           }
                           
                           if (object@strand == '-' 
                               && object@CDS_start <= object@CDS_end) {
                             return("Error: if the gene is annotated on the 
                                    negative strand the CDS_start must be 
                                    higher than the CDS_end")
                           }
                           
                         }
                         
                         if (isTRUE(!is.na(object@strand) 
                                    && !is.na(object@CDS_start) 
                                    && !is.na(object@TSS))) {
                           
                           if (object@strand == '+' 
                               && object@CDS_start < object@TSS) {
                             return("Error: if the gene is annotated on the 
                                    positive strand the CDS_start must be 
                                    higher than the TSS")
                           }
                           
                           if (object@strand == '-' 
                               && object@CDS_start > object@TSS) {
                             return("Error: if the gene is annotated on the 
                                    negative strand the CDS_start must be lower 
                                    than the TSS")
                           }
                           
                         }
                         
                         if (isTRUE(!is.na(object@strand) 
                                    && !is.na(object@CDS_end) 
                                    && !is.na(object@TTS))) {
                           
                           if (object@strand == '-' 
                               && object@CDS_end < object@TTS) {
                             return("Error: if the gene is annotated on the 
                                    negative strand the CDS_end must be higher 
                                    than the TTS")
                           }
                           
                           if (object@strand == '+' 
                               && object@CDS_end > object@TTS) {
                             return("Error: if the gene is annotated on the 
                                    positive strand the CDS_end must be lower 
                                    than the TTS")
                             
                           }
                         }
                         
                       },
                       
                       contains = "Gene"                      
)
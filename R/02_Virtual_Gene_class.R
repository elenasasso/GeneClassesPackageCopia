#' Gene
#'
#' A virtual class to represent a generic gene.
#'
#' @slot id A numeric value representing the gene ID.
#' @slot Hugo_symbol A character string representing the Hugo symbol of the 
#' gene.
#' @slot description A character string describing the gene.
#' @slot chrom A character string representing the chromosome where the gene 
#' is located.
#' @slot start A numeric value indicating the start position of the gene on the 
#' chromosome.
#' @slot end A numeric value indicating the end position of the gene on the 
#' chromosome.
#' @slot strand A character string indicating the strand of the gene ('+' or 
#' '-').
#' @slot TSS A numeric value representing the transcription start site.
#' @slot TTS A numeric value representing the transcription termination site.
#' @slot number_exon A numeric value indicating the number of exons in the 
#' gene.
#' @slot location A character string indicating the location of the gene 
#' ('Nucleus', 'Mitochondrion', 'Chloroplast').
#' @slot category A character string indicating the category of the gene 
#' ('Protein-coding', 'Housekeeping', 'Regolative').
#' @slot gene_product A character string representing the product of the gene.
#'
#' @details
#' Additional details:
#' The protoype are:
#' id = NA_real_, Hugo_symbol = NA_character_, description = NA_character_, 
#' chrom = NA_character_, start = NA_real_, end = NA_real_, 
#' number_exon = NA_real_, location = NA_character_, category = NA_character_, 
#' gene_product = NA_character_, strand = NA_character_.
#'
#' The validity function checks the validity of the gene object, ensuring that:
#' \itemize{
#'   \item numeric values are correctly set,
#'   \item the strand is either '+' or '-',
#'   \item the TSS is higher or lower than the TTS based on the correct strand,
#'   \item the location and the chromosome are concordant 
#' }
#'
#' @return A \code{Gene} object.
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @export
Gene <- setClass("Gene", representation(id = "numeric", 
                                        Hugo_symbol = "character", 
                                description = "character", chrom="character",
                                start = "numeric", end = "numeric",
                                strand = "character", TSS = "numeric", 
                                TTS = "numeric", number_exon = "numeric", 
                                location = "character", category = "character", 
                                gene_product = "character"),
         
         prototype = list(id = NA_real_, Hugo_symbol = NA_character_, 
                          description = NA_character_, chrom = NA_character_,
                          start = NA_real_, end = NA_real_, 
                          number_exon = NA_real_, location = NA_character_, 
                          category = NA_character_, 
                          gene_product = NA_character_, 
                          strand = NA_character_),
         
         validity = function(object) {
           
           if (is.na(object@id)) {
             return('ERROR: ID required')
           }
           
           if (!is.numeric(object@id)) {
             return("ID must be a numeric value.")
           }
           
           if (!is.numeric(object@start)) {
             return("start must be a numeric value.")
           }
           
           if (!is.numeric(object@end)) {
             return("end must be a numeric value.")
           }
           
           if (!is.na(object@start) && !is.na(object@end) && 
               (object@end) < (object@start)) {
             return("end must be higher than start.")
           }
           
           if (!is.na(object@strand) && !(object@strand %in% c("+", "-"))) {
             return("strand must be + or -.")
           }
           
           if (isTRUE(!is.na(object@strand) && !is.na(object@TSS) 
                      && !is.na(object@TTS))) {
             
             if (object@strand == '+' && object@TSS >= object@TTS) {
               return("Error: if the gene is annotated on the positive strand 
                      the TSS must be lower than the TTS")
             }
             
             if (object@strand == '-' && object@TSS <= object@TTS) {
               return("Error: if the gene is annotated on the negative strand 
                      the TSS must be higher than the TTS")
             }
             
           }
           
           if (!is.numeric(object@number_exon)) {
             return("number_exon must be a numeric value.")
           }
           
           if (!is.na(object@location) && !(object@location %in% 
                                            c("Nucleus", "Mitochondrion", 
                                              "Chloroplast"))) {
             return("Location must be one of 'Nucleus', 'Mitochondrion', or
                    'Chloroplast'.")
           }
           
           if (!is.na(object@category) && !(object@category %in% 
                                            c("Protein-coding", "Housekeeping", 
                                              "Regolative"))) {
             return("Category must be 'Protein-coding', 'Housekeeping' or 
                    'Regolative'.")
           }
           
           if (!is.na(object@location) && object@location == "Mitochondrion" 
               && object@chrom != "M") {
             return("If location is 'Mitochondrion', chrom must be 'M'.")
           }
           
           if (isTRUE(!is.na(object@location) && object@location == "Nucleus" 
                      && (object@chrom == "M" || object@chrom == "C"))) {
             return("If location is 'Nucleus', chrom can't be 'M' or 'C'.")
           }
           
           if (!is.na(object@location) && object@location == "Chloroplast" 
               && object@chrom != "C") {
             return("If location is 'Chloroplast', chrom must be 'C'.")
           }
           
           TRUE
         },
         
         contains = "VIRTUAL"
)

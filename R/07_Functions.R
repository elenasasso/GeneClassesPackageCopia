#' Compute Gene Length
#'
#' This function calculates the length of a gene in base pairs based on its 
#' start and end positions.
#'
#' @param .object An object of class \code{Gene}.
#'
#' @return A numeric value representing the length of the gene.
#'
#' @export
setGeneric("ComputeGeneLength", function(.object) {
  standardGeneric("ComputeGeneLength")
})


#' ComputeGeneLength method for Gene class
#'
#' This method calculates the length of a gene in base pairs for objects of 
#' class \code{Gene}.
#'
#' @param .object An object of class \code{Gene}.
#'
#' @return A numeric value representing the length of the gene.
#'
#' @examples
#' Brca1 <- CodingGene(id = 1, Hugo_symbol = "BRCA1", chrom = "17", 
#' start = 41196312, end = 41277500)
#' ComputeGeneLength(Brca1)
#' @export
#' @import methods
setMethod(f = "ComputeGeneLength", 
          signature = "Gene",
          definition = function(.object) {
            .object@end - (.object@start-1)
          }
)



#' LengthProduct Generic Function
#'
#' A generic function to calculate the length of the product of a gene.
#'
#' @param classes classes that contains a length attribute for the gene 
#' product.
#'
#' @return The length of the gene product.
#'
#' @export
setGeneric("lengthProduct", function(classes) {
  standardGeneric("lengthProduct")
})


#' lengthProduct Methods for each class
#'
#' This function creates specific methods for the \code{lengthProduct} generic 
#' function for all classes.
#'
#' @param classes A list of class names for which the length product methods 
#' should be created.
#'
#' @return This function does not return a value. It creates methods for the 
#' \code{lengthProduct} generic function.
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @examples
#' Brca1 <- CodingGene(id = 1, Hugo_symbol = "BRCA1", chrom = "17", 
#' start = 41196312, end = 41277500)
#' lengthProduct(Brca1)
#'
#' @export
#' @import methods
lengthProductMethod <- function(classes) {
  lapply(classes, function(class) {
    attributes <- slotNames(class)
    
    
    length_attr <- attributes[grepl("length", attributes, ignore.case = TRUE)]
    
    
    if (length(length_attr) == 1) {
      setMethod("lengthProduct", class, function(classes) {
        slot(classes, length_attr)
      })
    }
  })
}

lengthProductMethod(classList_for_product)

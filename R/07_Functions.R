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



#' Create getter and setter
#'
#' This function creates getter and setter methods for all attributes (slots) 
#' of the classes.
#'
#' @param classes A list of class names for which the accessors should be 
#' created.
#'
#' @details The function iterates over each class and its attributes (slots) 
#' to create getter and setter for each slot of each class. 
#' For attributes `gene_product`, `category` and `type_RNA` the setter method 
#' will throw an error if modification is attempted. 
#' The validity of the object is also checked.
#'
#' @return This function does not return a value. It creates getter and setter
#' methods in the environment.
#'
#' @section Author:
#' Elena Sasso \email{elena.sasso@mail.polimi.it}
#'
#' @export
#' @import methods
createAccessors <- function(classes) {
  all_attributes <- character()
  
  lapply(classes, function(class) {
    attributes <- slotNames(class)
    new_attributes <- setdiff(attributes, all_attributes)
    all_attributes <<- union(all_attributes, new_attributes)
    
    lapply(new_attributes, function(attr) {
      setGeneric(attr, function(x) standardGeneric(attr))
      setGeneric(paste0(attr, "<-"), function(x, value)
        standardGeneric(paste0(attr, "<-")))
      
      setMethod(attr, class, function(x) slot(x, attr))
      
      if (!attr %in% c("gene_product", "category", "type_RNA")) {
        setMethod(paste0(attr, "<-"), class, function(x, value) {
          slot(x, attr) <- value
          
          valid <- validObject(x, test = TRUE)
          if (is.character(valid)) {
            stop(paste("Invalid value for slot", attr, ": ", value, ". ", 
                       validObject(x, test = FALSE)))
          }
          x
        })
      } else {
        setMethod(paste0(attr, "<-"), class, function(x, value) {
          stop(paste("Cannot modify the", attr, "slot"))
        })
      }
    })
  })
}



#' LengthProduct Generic Function
#'
#' A generic function to calculate the length of the product of a gene.
#'
#' @param classes classes that contains a length attribute for the gene 
#' product.
#'
#' @return The length of the gene product.
#'
#' @usage lengthProduct(classes)
#'
#' @export
setGeneric("lengthProduct", function(classes) {
  standardGeneric("lengthProduct")
})


#' Create lengthProduct Methods for each class
#'
#' This function creates specific methods for the \code{lengthProduct} generic 
#' function for all classes.
#'
#' @param classes A list of class names for which the length product methods 
#' should be created.
#'
#' @details The function iterates over each class and its attributes (slots) 
#' to find an attribute that contains "length" in its name. 
#' It then defines a method for the \code{lengthProduct} generic function that 
#' retrieves the value of this attribute.
#'
#' @return This function does not return a value. It creates methods for the 
#' \code{lengthProduct} generic function.
#'
#' @usage lengthProduct(classes)
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
lengthProduct <- function(classes) {
  lapply(classes, function(class) {
    attributes <- slotNames(class)
    
    
    length_attr <- attributes[grepl("length", attributes, ignore.case = TRUE)]
    
    
    if (length(length_attr) == 1) {
      setMethod("lengthProduct", class, function(object) {
        slot(object, length_attr)
      })
    }
  })
}

lengthProduct(classList_for_product)

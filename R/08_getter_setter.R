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
    attributes <- slotNames(getClass(class))
    new_attributes <- setdiff(attributes, all_attributes)
    all_attributes <<- union(all_attributes, new_attributes)
    
    lapply(new_attributes, function(attr) {
      # Generic getter
      setGeneric(attr, function(x) standardGeneric(attr))
      # Export the getter
      cat(sprintf("#' @export\nsetGeneric('%s', function(x) standardGeneric('%s'))\n", attr, attr), file = "R/getters_setters.R", append = TRUE)
      
      # Generic setter
      setGeneric(paste0(attr, "<-"), function(x, value) standardGeneric(paste0(attr, "<-")))
      # Export the setter
      cat(sprintf("#' @export\nsetGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n", attr, paste0(attr, "<-")), file = "R/getters_setters.R", append = TRUE)
      
      # Getter method
      setMethod(attr, class, function(x) slot(x, attr))
      # Export the getter method
      cat(sprintf("#' @export\nsetMethod('%s', '%s', function(x) x@%s)\n", attr, class, attr), file = "R/getters_setters.R", append = TRUE)
      
      if (!attr %in% c("gene_product", "category", "type_RNA")) {
        # Setter method
        setMethod(paste0(attr, "<-"), class, function(x, value) {
          slot(x, attr) <- value
          valid <- validObject(x, test = TRUE)
          if (is.character(valid)) {
            stop(paste("Invalid value for slot", attr, ": ", value, ". ", 
                       validObject(x, test = FALSE)))
          }
          x
        })
        # Export the setter method
        cat(sprintf("#' @export\nsetMethod('%s<-', '%s', function(x, value) {\n  x@%s <- value\n  x\n})\n", attr, class, attr), file = "R/getters_setters.R", append = TRUE)
      } else {
        # Setter method that throws an error
        setMethod(paste0(attr, "<-"), class, function(x, value) {
          stop(paste("Cannot modify the", attr, "slot"))
        })
        # Export the setter method that throws an error
        cat(sprintf("#' @export\nsetMethod('%s<-', '%s', function(x, value) {\n  stop(paste('Cannot modify the', attr, 'slot'))\n})\n", attr, class), file = "R/getters_setters.R", append = TRUE)
      }
    })
  })
}



# Genera i getter e setter per le classi concrete
createAccessors(classList)

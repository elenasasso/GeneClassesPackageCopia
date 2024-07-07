generateGetterSetterCode <- function(class_name, file_path) {
  fileConn <- file(file_path, open = "wt")
  
    attributes <- slotNames(class_name)
    
    for (attr in attributes) {
      # Getter
      cat(sprintf(
        "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\nsetGeneric('%s', function(x) standardGeneric('%s'))\n",
        attr, attr, class_name, class_name, attr, attr, attr
      ), file = fileConn)
      cat(sprintf(
        "#' @export\nsetMethod('%s', '%s', function(x) x@%s)\n\n",
        attr, class_name, attr
      ), file = fileConn)
      
      # Setter
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\nsetGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n",
        attr, attr, class_name, class_name, attr, attr, attr
      ), file = fileConn)
      cat(sprintf(
        "#' @export\nsetMethod('%s<-', '%s', function(x, value) {\n  x@%s <- value\n  x\n})\n\n",
        attr, class_name, attr
      ), file = fileConn)
    }
  
  close(fileConn)
}

# Esegui la funzione con la tua lista di classi e il percorso del file di output
generateGetterSetterCode("Gene", "R/getters_setters.R")


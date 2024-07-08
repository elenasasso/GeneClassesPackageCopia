#' Generate Getter and Setter Code for Gene class
#' @param class_name The name of the S4 class for which the getter and setter 
#' methods are to be generated.
#' @param file_path The file path where the generated code will be written.
#' @details This function generates Roxygen2 documentation for each getter 
#' and setter method, making them ready for inclusion in an R package.
#' It writes the documentations and the methods in the appropriate files, 
#' which were empty at the beginning. 
#' For attributes named "gene_product" and "category", 
#' the setter methods are generated with a restriction that prevents 
#' modification of these attributes, providing an error message instead.
#' @return This function does not return a value. It writes the generated 
#' code directly to the specified file.
generateGetterSetterCode_for_Gene <- function(class_name, file_path) {
  fileConn <- file(file_path, open = "wt")
  
  attributes <- slotNames(class_name)
  
  lapply(attributes, function(attr) {
    # Getter
    cat(sprintf(
      "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setGeneric('%s', function(x) standardGeneric('%s'))\n",
      attr, attr
    ), file = fileConn)
    cat(sprintf(
      "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setMethod('%s', '%s', function(x) x@%s)\n\n",
      attr, class_name, attr
    ), file = fileConn)
    
    # Setter
    if (attr %in% c("gene_product", "category")) {
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n",
        attr, attr
      ), file = fileConn)
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setMethod('%s<-', '%s', function(x, value) {\n  stop('Cannot modify the %s attribute')\n})\n\n",
        attr, class_name, attr
      ), file = fileConn)
    } else {
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n",
        attr, attr
      ), file = fileConn)
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setMethod('%s<-', '%s', function(x, value) {\n  x@%s <- value\n  x\n})\n\n",
        attr, class_name, attr
      ), file = fileConn)
    }
  })
  
  close(fileConn)
}


generateGetterSetterCode_for_Gene("Gene", "R/getters_setters_Gene.R")


#' Generate Getter and Setter Code for derived classes
#' @param class_name The name of the S4 class for which the getter and setter 
#' methods are to be generated.
#' @param file_path The file path where the generated code will be written.
#' @details This function generates Roxygen2 documentation for each getter 
#' and setter method, making them ready for inclusion in an R package. 
#' It writes the documentations and the methods in the appropriate files, 
#' which were empty at the beginning.
#' For attributes named "type_RNA" and "types_RNA", 
#' the setter methods are generated with a restriction that prevents 
#' modification of these attributes, providing an error message instead.
#' @return This function does not return a value. It writes the generated 
#' code directly to the specified file.
generateGetterSetterCode_for_others <- function(class_name, file_path) {
  fileConn <- file(file_path, open = "wt")
  
  attributes <- setdiff(slotNames(class_name), slotNames("Gene"))
  
  lapply(attributes, function(attr) {
    # Getter
    cat(sprintf(
      "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setGeneric('%s', function(x) standardGeneric('%s'))\n",
      attr, attr
    ), file = fileConn)
    cat(sprintf(
      "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setMethod('%s', '%s', function(x) x@%s)\n\n",
      attr, class_name, attr
    ), file = fileConn)
    
    # Setter
    if (attr %in% c("type_RNA", "types_RNA")) {
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n",
        attr, attr
      ), file = fileConn)
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setMethod('%s<-', '%s', function(x, value) {\n  stop('Cannot modify the %s attribute')\n})\n\n",
        attr, class_name, attr
      ), file = fileConn)
    } else {
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n",
        attr, attr
      ), file = fileConn)
      cat(sprintf(
        "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
        attr, attr, class_name, class_name, attr
      ), file = fileConn)
      cat(sprintf(
        "setMethod('%s<-', '%s', function(x, value) {\n  x@%s <- value\n  x\n})\n\n",
        attr, class_name, attr
      ), file = fileConn)
    }
  })
  
  close(fileConn)
}

generateGetterSetterCode_for_others("CodingGene", 
                                    "R/getters_setters_CodingGene.R")
generateGetterSetterCode_for_others("tRNA_Gene", "R/getters_setters_tRNA.R")
generateGetterSetterCode_for_others("rRNA_Gene", "R/getters_setters_rRNA.R")
generateGetterSetterCode_for_others("lncRNA_Gene", 
                                    "R/getters_setters_lncRNA.R")
generateGetterSetterCode_for_others("sncRNA_Gene", 
                                    "R/getters_setters_sncRNA.R")




#' Generate Getter and Setter Code for small_RNAs genes classes
#' @param class_name The name of the S4 class for which the getter and setter 
#' methods are to be generated.
#' @param file_path The file path where the generated code will be written.
#' @details This function generates Roxygen2 documentation for each getter 
#' and setter method, making them ready for inclusion in an R package.
#' It writes the documentations and the methods in the appropriate files, 
#' which were empty at the beginning. 
#' @return This function does not return a value. It writes the generated 
#' code directly to the specified file.
generateGetterSetterCode_for_small <- function(class_name, file_path) {
  fileConn <- file(file_path, open = "wt")
  
  attributes <- setdiff(slotNames(class_name), slotNames("sncRNA_Gene"))
  
  lapply(attributes, function(attr) {
    # Getter
    cat(sprintf(
      "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setGeneric('%s', function(x) standardGeneric('%s'))\n",
      attr, attr
    ), file = fileConn)
    cat(sprintf(
      "#' @title Get %s attribute\n#' @description Getter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @return The value of the %s attribute.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setMethod('%s', '%s', function(x) x@%s)\n\n",
      attr, class_name, attr
    ), file = fileConn)
    
    # Setter
    cat(sprintf(
      "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setGeneric('%s<-', function(x, value) standardGeneric('%s<-'))\n",
      attr, attr
    ), file = fileConn)
    cat(sprintf(
      "#' @title Set %s attribute\n#' @description Setter for %s attribute of %s class.\n#' @param x An object of class %s.\n#' @param value The value to set for the %s attribute.\n#' @return The modified object.\n#' @export\n",
      attr, attr, class_name, class_name, attr
    ), file = fileConn)
    cat(sprintf(
      "setMethod('%s<-', '%s', function(x, value) {\n  x@%s <- value\n  x\n})\n\n",
      attr, class_name, attr
    ), file = fileConn)
  })
  
  close(fileConn)
}


generateGetterSetterCode_for_small("miRNA_Gene", 
                                   "R/getters_setters_miRNA_Gene.R")
generateGetterSetterCode_for_small("snoRNA_Gene", 
                                   "R/getters_setters_snoRNA_Gene.R")
generateGetterSetterCode_for_small("snRNA_Gene", 
                                   "R/getters_setters_snRNA_Gene.R")

#' @title Get miRNA_ID attribute
#' @description Getter for miRNA_ID attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @return The value of the miRNA_ID attribute.
#' @export
setGeneric('miRNA_ID', function(x) standardGeneric('miRNA_ID'))
#' @title Get miRNA_ID attribute
#' @description Getter for miRNA_ID attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @return The value of the miRNA_ID attribute.
#' @export
setMethod('miRNA_ID', 'miRNA_Gene', function(x) x@miRNA_ID)

#' @title Set miRNA_ID attribute
#' @description Setter for miRNA_ID attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @param value The value to set for the miRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('miRNA_ID<-', function(x, value) standardGeneric('miRNA_ID<-'))
#' @title Set miRNA_ID attribute
#' @description Setter for miRNA_ID attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @param value The value to set for the miRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('miRNA_ID<-', 'miRNA_Gene', function(x, value) {
  x@miRNA_ID <- value
  x
})

#' @title Get RNA_target attribute
#' @description Getter for RNA_target attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @return The value of the RNA_target attribute.
#' @export
setGeneric('RNA_target', function(x) standardGeneric('RNA_target'))
#' @title Get RNA_target attribute
#' @description Getter for RNA_target attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @return The value of the RNA_target attribute.
#' @export
setMethod('RNA_target', 'miRNA_Gene', function(x) x@RNA_target)

#' @title Set RNA_target attribute
#' @description Setter for RNA_target attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @param value The value to set for the RNA_target attribute.
#' @return The modified object.
#' @export
setGeneric('RNA_target<-', function(x, value) standardGeneric('RNA_target<-'))
#' @title Set RNA_target attribute
#' @description Setter for RNA_target attribute of miRNA_Gene class.
#' @param x An object of class miRNA_Gene.
#' @param value The value to set for the RNA_target attribute.
#' @return The modified object.
#' @export
setMethod('RNA_target<-', 'miRNA_Gene', function(x, value) {
  x@RNA_target <- value
  x
})


#' @title Get snRNA_ID attribute
#' @description Getter for snRNA_ID attribute of snRNA_Gene class.
#' @param x An object of class snRNA_Gene.
#' @return The value of the snRNA_ID attribute.
#' @export
setGeneric('snRNA_ID', function(x) standardGeneric('snRNA_ID'))
#' @title Get snRNA_ID attribute
#' @description Getter for snRNA_ID attribute of snRNA_Gene class.
#' @param x An object of class snRNA_Gene.
#' @return The value of the snRNA_ID attribute.
#' @export
setMethod('snRNA_ID', 'snRNA_Gene', function(x) x@snRNA_ID)

#' @title Set snRNA_ID attribute
#' @description Setter for snRNA_ID attribute of snRNA_Gene class.
#' @param x An object of class snRNA_Gene.
#' @param value The value to set for the snRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('snRNA_ID<-', function(x, value) standardGeneric('snRNA_ID<-'))
#' @title Set snRNA_ID attribute
#' @description Setter for snRNA_ID attribute of snRNA_Gene class.
#' @param x An object of class snRNA_Gene.
#' @param value The value to set for the snRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('snRNA_ID<-', 'snRNA_Gene', function(x, value) {
  x@snRNA_ID <- value
  x
})


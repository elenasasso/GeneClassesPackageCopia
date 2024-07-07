#' @title Get snoRNA_ID attribute
#' @description Getter for snoRNA_ID attribute of snoRNA_Gene class.
#' @param x An object of class snoRNA_Gene.
#' @return The value of the snoRNA_ID attribute.
#' @export
setGeneric('snoRNA_ID', function(x) standardGeneric('snoRNA_ID'))
#' @title Get snoRNA_ID attribute
#' @description Getter for snoRNA_ID attribute of snoRNA_Gene class.
#' @param x An object of class snoRNA_Gene.
#' @return The value of the snoRNA_ID attribute.
#' @export
setMethod('snoRNA_ID', 'snoRNA_Gene', function(x) x@snoRNA_ID)

#' @title Set snoRNA_ID attribute
#' @description Setter for snoRNA_ID attribute of snoRNA_Gene class.
#' @param x An object of class snoRNA_Gene.
#' @param value The value to set for the snoRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('snoRNA_ID<-', function(x, value) standardGeneric('snoRNA_ID<-'))
#' @title Set snoRNA_ID attribute
#' @description Setter for snoRNA_ID attribute of snoRNA_Gene class.
#' @param x An object of class snoRNA_Gene.
#' @param value The value to set for the snoRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('snoRNA_ID<-', 'snoRNA_Gene', function(x, value) {
  x@snoRNA_ID <- value
  x
})


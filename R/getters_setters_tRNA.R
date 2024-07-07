#' @title Get specific_aa attribute
#' @description Getter for specific_aa attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @return The value of the specific_aa attribute.
#' @export
setGeneric('specific_aa', function(x) standardGeneric('specific_aa'))
#' @title Get specific_aa attribute
#' @description Getter for specific_aa attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @return The value of the specific_aa attribute.
#' @export
setMethod('specific_aa', 'tRNA_Gene', function(x) x@specific_aa)

#' @title Set specific_aa attribute
#' @description Setter for specific_aa attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @param value The value to set for the specific_aa attribute.
#' @return The modified object.
#' @export
setGeneric('specific_aa<-', function(x, value) standardGeneric('specific_aa<-'))
#' @title Set specific_aa attribute
#' @description Setter for specific_aa attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @param value The value to set for the specific_aa attribute.
#' @return The modified object.
#' @export
setMethod('specific_aa<-', 'tRNA_Gene', function(x, value) {
  x@specific_aa <- value
  x
})

#' @title Get tRNA_ID attribute
#' @description Getter for tRNA_ID attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @return The value of the tRNA_ID attribute.
#' @export
setGeneric('tRNA_ID', function(x) standardGeneric('tRNA_ID'))
#' @title Get tRNA_ID attribute
#' @description Getter for tRNA_ID attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @return The value of the tRNA_ID attribute.
#' @export
setMethod('tRNA_ID', 'tRNA_Gene', function(x) x@tRNA_ID)

#' @title Set tRNA_ID attribute
#' @description Setter for tRNA_ID attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @param value The value to set for the tRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('tRNA_ID<-', function(x, value) standardGeneric('tRNA_ID<-'))
#' @title Set tRNA_ID attribute
#' @description Setter for tRNA_ID attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @param value The value to set for the tRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('tRNA_ID<-', 'tRNA_Gene', function(x, value) {
  x@tRNA_ID <- value
  x
})

#' @title Get length_tRNA attribute
#' @description Getter for length_tRNA attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @return The value of the length_tRNA attribute.
#' @export
setGeneric('length_tRNA', function(x) standardGeneric('length_tRNA'))
#' @title Get length_tRNA attribute
#' @description Getter for length_tRNA attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @return The value of the length_tRNA attribute.
#' @export
setMethod('length_tRNA', 'tRNA_Gene', function(x) x@length_tRNA)

#' @title Set length_tRNA attribute
#' @description Setter for length_tRNA attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @param value The value to set for the length_tRNA attribute.
#' @return The modified object.
#' @export
setGeneric('length_tRNA<-', function(x, value) standardGeneric('length_tRNA<-'))
#' @title Set length_tRNA attribute
#' @description Setter for length_tRNA attribute of tRNA_Gene class.
#' @param x An object of class tRNA_Gene.
#' @param value The value to set for the length_tRNA attribute.
#' @return The modified object.
#' @export
setMethod('length_tRNA<-', 'tRNA_Gene', function(x, value) {
  x@length_tRNA <- value
  x
})


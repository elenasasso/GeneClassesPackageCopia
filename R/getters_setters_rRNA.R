#' @title Get specific_RNA attribute
#' @description Getter for specific_RNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @return The value of the specific_RNA attribute.
#' @export
setGeneric('specific_RNA', function(x) standardGeneric('specific_RNA'))
#' @title Get specific_RNA attribute
#' @description Getter for specific_RNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @return The value of the specific_RNA attribute.
#' @export
setMethod('specific_RNA', 'rRNA_Gene', function(x) x@specific_RNA)

#' @title Set specific_RNA attribute
#' @description Setter for specific_RNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @param value The value to set for the specific_RNA attribute.
#' @return The modified object.
#' @export
setGeneric('specific_RNA<-', function(x, value) standardGeneric('specific_RNA<-'))
#' @title Set specific_RNA attribute
#' @description Setter for specific_RNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @param value The value to set for the specific_RNA attribute.
#' @return The modified object.
#' @export
setMethod('specific_RNA<-', 'rRNA_Gene', function(x, value) {
  x@specific_RNA <- value
  x
})

#' @title Get rRNA_ID attribute
#' @description Getter for rRNA_ID attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @return The value of the rRNA_ID attribute.
#' @export
setGeneric('rRNA_ID', function(x) standardGeneric('rRNA_ID'))
#' @title Get rRNA_ID attribute
#' @description Getter for rRNA_ID attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @return The value of the rRNA_ID attribute.
#' @export
setMethod('rRNA_ID', 'rRNA_Gene', function(x) x@rRNA_ID)

#' @title Set rRNA_ID attribute
#' @description Setter for rRNA_ID attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @param value The value to set for the rRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('rRNA_ID<-', function(x, value) standardGeneric('rRNA_ID<-'))
#' @title Set rRNA_ID attribute
#' @description Setter for rRNA_ID attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @param value The value to set for the rRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('rRNA_ID<-', 'rRNA_Gene', function(x, value) {
  x@rRNA_ID <- value
  x
})

#' @title Get length_rRNA attribute
#' @description Getter for length_rRNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @return The value of the length_rRNA attribute.
#' @export
setGeneric('length_rRNA', function(x) standardGeneric('length_rRNA'))
#' @title Get length_rRNA attribute
#' @description Getter for length_rRNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @return The value of the length_rRNA attribute.
#' @export
setMethod('length_rRNA', 'rRNA_Gene', function(x) x@length_rRNA)

#' @title Set length_rRNA attribute
#' @description Setter for length_rRNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @param value The value to set for the length_rRNA attribute.
#' @return The modified object.
#' @export
setGeneric('length_rRNA<-', function(x, value) standardGeneric('length_rRNA<-'))
#' @title Set length_rRNA attribute
#' @description Setter for length_rRNA attribute of rRNA_Gene class.
#' @param x An object of class rRNA_Gene.
#' @param value The value to set for the length_rRNA attribute.
#' @return The modified object.
#' @export
setMethod('length_rRNA<-', 'rRNA_Gene', function(x, value) {
  x@length_rRNA <- value
  x
})


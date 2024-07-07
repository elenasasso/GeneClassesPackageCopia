#' @title Get length_lncRNA attribute
#' @description Getter for length_lncRNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @return The value of the length_lncRNA attribute.
#' @export
setGeneric('length_lncRNA', function(x) standardGeneric('length_lncRNA'))
#' @title Get length_lncRNA attribute
#' @description Getter for length_lncRNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @return The value of the length_lncRNA attribute.
#' @export
setMethod('length_lncRNA', 'lncRNA_Gene', function(x) x@length_lncRNA)

#' @title Set length_lncRNA attribute
#' @description Setter for length_lncRNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @param value The value to set for the length_lncRNA attribute.
#' @return The modified object.
#' @export
setGeneric('length_lncRNA<-', function(x, value) standardGeneric('length_lncRNA<-'))
#' @title Set length_lncRNA attribute
#' @description Setter for length_lncRNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @param value The value to set for the length_lncRNA attribute.
#' @return The modified object.
#' @export
setMethod('length_lncRNA<-', 'lncRNA_Gene', function(x, value) {
  x@length_lncRNA <- value
  x
})

#' @title Get lncRNA_ID attribute
#' @description Getter for lncRNA_ID attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @return The value of the lncRNA_ID attribute.
#' @export
setGeneric('lncRNA_ID', function(x) standardGeneric('lncRNA_ID'))
#' @title Get lncRNA_ID attribute
#' @description Getter for lncRNA_ID attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @return The value of the lncRNA_ID attribute.
#' @export
setMethod('lncRNA_ID', 'lncRNA_Gene', function(x) x@lncRNA_ID)

#' @title Set lncRNA_ID attribute
#' @description Setter for lncRNA_ID attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @param value The value to set for the lncRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('lncRNA_ID<-', function(x, value) standardGeneric('lncRNA_ID<-'))
#' @title Set lncRNA_ID attribute
#' @description Setter for lncRNA_ID attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @param value The value to set for the lncRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('lncRNA_ID<-', 'lncRNA_Gene', function(x, value) {
  x@lncRNA_ID <- value
  x
})

#' @title Get type_RNA attribute
#' @description Getter for type_RNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @return The value of the type_RNA attribute.
#' @export
setGeneric('type_RNA', function(x) standardGeneric('type_RNA'))
#' @title Get type_RNA attribute
#' @description Getter for type_RNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @return The value of the type_RNA attribute.
#' @export
setMethod('type_RNA', 'lncRNA_Gene', function(x) x@type_RNA)

#' @title Set type_RNA attribute
#' @description Setter for type_RNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @param value The value to set for the type_RNA attribute.
#' @return The modified object.
#' @export
setGeneric('type_RNA<-', function(x, value) standardGeneric('type_RNA<-'))
#' @title Set type_RNA attribute
#' @description Setter for type_RNA attribute of lncRNA_Gene class.
#' @param x An object of class lncRNA_Gene.
#' @param value The value to set for the type_RNA attribute.
#' @return The modified object.
#' @export
setMethod('type_RNA<-', 'lncRNA_Gene', function(x, value) {
  stop('Cannot modify the type_RNA attribute')
})


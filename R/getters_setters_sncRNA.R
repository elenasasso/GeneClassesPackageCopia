#' @title Get length_sncRNA attribute
#' @description Getter for length_sncRNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @return The value of the length_sncRNA attribute.
#' @export
setGeneric('length_sncRNA', function(x) standardGeneric('length_sncRNA'))
#' @title Get length_sncRNA attribute
#' @description Getter for length_sncRNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @return The value of the length_sncRNA attribute.
#' @export
setMethod('length_sncRNA', 'sncRNA_Gene', function(x) x@length_sncRNA)

#' @title Set length_sncRNA attribute
#' @description Setter for length_sncRNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @param value The value to set for the length_sncRNA attribute.
#' @return The modified object.
#' @export
setGeneric('length_sncRNA<-', function(x, value) standardGeneric('length_sncRNA<-'))
#' @title Set length_sncRNA attribute
#' @description Setter for length_sncRNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @param value The value to set for the length_sncRNA attribute.
#' @return The modified object.
#' @export
setMethod('length_sncRNA<-', 'sncRNA_Gene', function(x, value) {
  x@length_sncRNA <- value
  x
})

#' @title Get sncRNA_ID attribute
#' @description Getter for sncRNA_ID attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @return The value of the sncRNA_ID attribute.
#' @export
setGeneric('sncRNA_ID', function(x) standardGeneric('sncRNA_ID'))
#' @title Get sncRNA_ID attribute
#' @description Getter for sncRNA_ID attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @return The value of the sncRNA_ID attribute.
#' @export
setMethod('sncRNA_ID', 'sncRNA_Gene', function(x) x@sncRNA_ID)

#' @title Set sncRNA_ID attribute
#' @description Setter for sncRNA_ID attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @param value The value to set for the sncRNA_ID attribute.
#' @return The modified object.
#' @export
setGeneric('sncRNA_ID<-', function(x, value) standardGeneric('sncRNA_ID<-'))
#' @title Set sncRNA_ID attribute
#' @description Setter for sncRNA_ID attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @param value The value to set for the sncRNA_ID attribute.
#' @return The modified object.
#' @export
setMethod('sncRNA_ID<-', 'sncRNA_Gene', function(x, value) {
  x@sncRNA_ID <- value
  x
})

#' @title Get types_RNA attribute
#' @description Getter for types_RNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @return The value of the types_RNA attribute.
#' @export
setGeneric('types_RNA', function(x) standardGeneric('types_RNA'))
#' @title Get types_RNA attribute
#' @description Getter for types_RNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @return The value of the types_RNA attribute.
#' @export
setMethod('types_RNA', 'sncRNA_Gene', function(x) x@types_RNA)

#' @title Set types_RNA attribute
#' @description Setter for types_RNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @param value The value to set for the types_RNA attribute.
#' @return The modified object.
#' @export
setGeneric('types_RNA<-', function(x, value) standardGeneric('types_RNA<-'))
#' @title Set types_RNA attribute
#' @description Setter for types_RNA attribute of sncRNA_Gene class.
#' @param x An object of class sncRNA_Gene.
#' @param value The value to set for the types_RNA attribute.
#' @return The modified object.
#' @export
setMethod('types_RNA<-', 'sncRNA_Gene', function(x, value) {
  stop('Cannot modify the types_RNA attribute')
})


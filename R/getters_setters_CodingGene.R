#' @title Get CDS_start attribute
#' @description Getter for CDS_start attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the CDS_start attribute.
#' @export
setGeneric('CDS_start', function(x) standardGeneric('CDS_start'))
#' @title Get CDS_start attribute
#' @description Getter for CDS_start attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the CDS_start attribute.
#' @export
setMethod('CDS_start', 'CodingGene', function(x) x@CDS_start)

#' @title Set CDS_start attribute
#' @description Setter for CDS_start attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the CDS_start attribute.
#' @return The modified object.
#' @export
setGeneric('CDS_start<-', function(x, value) standardGeneric('CDS_start<-'))
#' @title Set CDS_start attribute
#' @description Setter for CDS_start attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the CDS_start attribute.
#' @return The modified object.
#' @export
setMethod('CDS_start<-', 'CodingGene', function(x, value) {
  x@CDS_start <- value
  x
})

#' @title Get CDS_end attribute
#' @description Getter for CDS_end attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the CDS_end attribute.
#' @export
setGeneric('CDS_end', function(x) standardGeneric('CDS_end'))
#' @title Get CDS_end attribute
#' @description Getter for CDS_end attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the CDS_end attribute.
#' @export
setMethod('CDS_end', 'CodingGene', function(x) x@CDS_end)

#' @title Set CDS_end attribute
#' @description Setter for CDS_end attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the CDS_end attribute.
#' @return The modified object.
#' @export
setGeneric('CDS_end<-', function(x, value) standardGeneric('CDS_end<-'))
#' @title Set CDS_end attribute
#' @description Setter for CDS_end attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the CDS_end attribute.
#' @return The modified object.
#' @export
setMethod('CDS_end<-', 'CodingGene', function(x, value) {
  x@CDS_end <- value
  x
})

#' @title Get protein_ID attribute
#' @description Getter for protein_ID attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the protein_ID attribute.
#' @export
setGeneric('protein_ID', function(x) standardGeneric('protein_ID'))
#' @title Get protein_ID attribute
#' @description Getter for protein_ID attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the protein_ID attribute.
#' @export
setMethod('protein_ID', 'CodingGene', function(x) x@protein_ID)

#' @title Set protein_ID attribute
#' @description Setter for protein_ID attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the protein_ID attribute.
#' @return The modified object.
#' @export
setGeneric('protein_ID<-', function(x, value) standardGeneric('protein_ID<-'))
#' @title Set protein_ID attribute
#' @description Setter for protein_ID attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the protein_ID attribute.
#' @return The modified object.
#' @export
setMethod('protein_ID<-', 'CodingGene', function(x, value) {
  x@protein_ID <- value
  x
})

#' @title Get length_protein attribute
#' @description Getter for length_protein attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the length_protein attribute.
#' @export
setGeneric('length_protein', function(x) standardGeneric('length_protein'))
#' @title Get length_protein attribute
#' @description Getter for length_protein attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @return The value of the length_protein attribute.
#' @export
setMethod('length_protein', 'CodingGene', function(x) x@length_protein)

#' @title Set length_protein attribute
#' @description Setter for length_protein attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the length_protein attribute.
#' @return The modified object.
#' @export
setGeneric('length_protein<-', function(x, value) standardGeneric('length_protein<-'))
#' @title Set length_protein attribute
#' @description Setter for length_protein attribute of CodingGene class.
#' @param x An object of class CodingGene.
#' @param value The value to set for the length_protein attribute.
#' @return The modified object.
#' @export
setMethod('length_protein<-', 'CodingGene', function(x, value) {
  x@length_protein <- value
  x
})

